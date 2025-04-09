import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:take_it/take_it.dart';

import '../view/notification_view.dart';


@RoutePage()
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      builder: (context, module) {
        return NotificationView(
            // bloc: module.get<SettingsBloc>(),
            );
      },
    );
  }
}
