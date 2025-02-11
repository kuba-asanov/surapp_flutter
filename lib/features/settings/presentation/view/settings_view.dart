import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/ui_kit/app_text_styles.dart';
import 'package:surapp_flutter/core/localization/generated/app_localization.dart';
import 'package:surapp_flutter/core/localization/locale_extension.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    super.key,
    required this.bloc,
  });

  final SettingsBloc bloc;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.settings),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          bloc: bloc,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${locale.theme}:",
                      style: const AppTextStyles.subtitle1(),
                    ),
                    DropdownButton<ThemeMode>(
                      value: state.themeMode,
                      onChanged: (themeMode) =>
                          bloc.add(UpdateThemeEvent(themeMode)),
                      items: [
                        DropdownMenuItem(
                          value: ThemeMode.system,
                          child: Text(locale.systemTheme),
                        ),
                        DropdownMenuItem(
                          value: ThemeMode.light,
                          child: Text(locale.lightTheme),
                        ),
                        DropdownMenuItem(
                          value: ThemeMode.dark,
                          child: Text(locale.darkTheme),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${locale.localization}:",
                      style: const AppTextStyles.subtitle1(),
                    ),
                    DropdownButton<Locale>(
                      value: state.locale,
                      onChanged: (locale) =>
                          bloc.add(UpdateLocaleEvent(locale)),
                      items: AppLocalizations.supportedLocales
                          .map(
                            (lcl) => DropdownMenuItem(
                              value: lcl,
                              child: Text(lcl.languageCode),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
