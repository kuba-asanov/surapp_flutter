// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:surapp_flutter/features/settings/presentation/view/settings_view.dart';
import 'package:take_it/take_it.dart';

// @RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      builder: (context, module) {
        return SettingsView(
          bloc: module.get<SettingsBloc>(),
        );
      },
    );
  }
}
