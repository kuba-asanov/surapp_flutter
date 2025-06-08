import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CommandsBloc<E extends Object, S, C extends UiCommand> extends Bloc<E, S>
    implements CommandsBlocBase<S, C> {
  CommandsBloc(super.state);

  late final StreamController<C> _uiCommandsController = StreamController.broadcast(onListen: _onStreamListened);

  @override
  Stream<C> get uiCommandsStream => _uiCommandsController.stream;

  bool _isCommandsStreamListenedTo = false;
  final _commandsToAdd = <C>[];

  void _onStreamListened() {
    /// Если это первый слушатель, то кидаем в стрим все сохраненные ранее
    /// команды в порядке их первоначального вызова
    if (!_isCommandsStreamListenedTo) {
      _isCommandsStreamListenedTo = true;

      if (_commandsToAdd.isEmpty) return;

      for (var i = _commandsToAdd.length - 1; i >= 0; i--) {
        _addCommandToStream(_commandsToAdd[i]);
      }

      _commandsToAdd.clear();
    }
  }

  @protected
  void addUiCommand(C command) {
    if (isClosed) return;

    /// Если есть хотя бы один слушатель - кидаем команду в стрим.
    /// Если нет - сохраняем ее для пробрасывания в стрим, когда появится первый
    /// слушатель
    if (_isCommandsStreamListenedTo) {
      _addCommandToStream(command);
    } else {
      _commandsToAdd.add(command);
    }
  }

  void _addCommandToStream(C command) {
    final observer = Bloc.observer;

    if (observer is CommandsBlocObserver) {
      observer.onCommand(this, command);
    }

    _uiCommandsController.add(command);
  }

  void _closeStream() {
    if (!_uiCommandsController.isClosed) _uiCommandsController.close();
  }

  @mustCallSuper
  @override
  Future<void> close() async {
    _closeStream();
    await super.close();
  }
}

abstract class UiCommand extends Equatable {
  const UiCommand();

  @override
  List<Object?> get props => [];
}

abstract class UiCommandsBase<T extends UiCommand> {
  Stream<T> get uiCommandsStream;
}

@visibleForTesting
abstract class CommandsBlocBase<S, C extends UiCommand> extends BlocBase<S> implements UiCommandsBase<C> {
  CommandsBlocBase(super.state);
}

mixin CommandsBlocObserver on BlocObserver {
  void onCommand(Bloc bloc, UiCommand command);
}
