import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/ui_kit/app_text_styles.dart';
import 'package:surapp_flutter/core/core_di_module.dart';
import 'package:surapp_flutter/core/localization/generated/app_localization.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:take_it/take_it.dart';

import '../navigation/auto_router.dart';

class App extends StatelessWidget {
  App({
    super.key,
  });
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      createModule: CoreDiModule.new,
      builder: (context, module) {
        return BlocBuilder<SettingsBloc, SettingsState>(
          bloc: module.get<SettingsBloc>(),
          builder: (context, state) {
            return MaterialApp.router(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.locale,
              theme: ThemeData(
                fontFamily: AppTextStyles.defaultFontFamily,
              ),
              darkTheme: ThemeData.dark(),
              themeMode: state.themeMode,
              routerConfig: _appRouter.config(
                navigatorObservers: () => [AutoRouteObserver()],
              ),
            );
          },
        );
      },
    );
  }
}
