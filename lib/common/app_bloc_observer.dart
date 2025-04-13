import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

/// Блок обсервер для слежения всего что находится в блоке
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    final logMessage = StringBuffer()
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln('Event: ${transition.event.runtimeType}')
      ..writeln('Transition: ${transition.currentState.runtimeType} => '
          '${transition.nextState.runtimeType}')
      ..write(
        'New State: ${transition.nextState?.toString().limit(200)}',
      );
    l.d(logMessage.toString());
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final logMessage = StringBuffer()
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln(error.toString());

    l.d(logMessage.toString());
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    final logMessage = StringBuffer()
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln('Event: ${event.runtimeType}')
      ..write('Details: ${event?.toString().limit(200)}');

    l.d(logMessage.toString());
    super.onEvent(bloc, event);
  }
}

extension on String {
  String limit(int length) {
    return this.length > length ? substring(0, length) : this;
  }
}
