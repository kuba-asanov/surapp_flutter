import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/core/utils/commands_bloc.dart';

class UiCommandsConsumer<BlocT extends UiCommandsBase<CommandT>,
    CommandT extends UiCommand> extends StatefulWidget {
  const UiCommandsConsumer({
    required this.listener,
    required this.child,
    this.bloc,
    super.key,
  });

  final UiCommandsListener<CommandT> listener;
  final Widget child;
  final BlocT? bloc;

  @override
  State<StatefulWidget> createState() =>
      _UiCommandsConsumerState<BlocT, CommandT>();
}

class _UiCommandsConsumerState<BlocT extends UiCommandsBase<CommandT>,
        CommandT extends UiCommand>
    extends State<UiCommandsConsumer<BlocT, CommandT>> {
  late final StreamSubscription _subscription;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    final bloc = widget.bloc ?? context.read<BlocT>();
    _subscription = bloc.uiCommandsStream.listen((command) {
      if (mounted) widget.listener.call(context, command);
    });
  }

  @override
  @mustCallSuper
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

typedef UiCommandsListener<CommandT extends UiCommand> = void Function(
  BuildContext context,
  CommandT command,
);
