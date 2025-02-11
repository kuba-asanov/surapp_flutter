part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    ThemeMode? themeMode,
    Locale? locale,
  }) = _SettingsState;

  const SettingsState._();
}
