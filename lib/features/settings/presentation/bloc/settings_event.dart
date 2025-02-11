part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object?> get props => [];
}

class UpdateThemeEvent extends SettingsEvent {
  const UpdateThemeEvent(this.newThemeMode);

  final ThemeMode? newThemeMode;
}

class UpdateLocaleEvent extends SettingsEvent {
  const UpdateLocaleEvent(this.newLocale);

  final Locale? newLocale;
}
