import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:take_it/take_it.dart';

import '../view/home_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      builder: (context, module) {
        return HomeView(
            // bloc: module.get<SettingsBloc>(),
            );
      },
    );
  }
}
