import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:surapp_flutter/features/settings/presentation/view/settings_view.dart';
import 'package:take_it/take_it.dart';

class SettingsViewRoute extends GoRoute {
  SettingsViewRoute()
      : super(
          path: "/settings",
          builder: (context, state) {
            return DiScopeBuilder(
              builder: (context, module) {
                return SettingsView(
                  bloc: module.get<SettingsBloc>(),
                );
              },
            );
          },
        );
}
