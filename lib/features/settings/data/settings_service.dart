import 'package:flutter/material.dart';
import 'package:surapp_flutter/core/storage/local_storage.dart';

class SettingsService {
  SettingsService({required this.localStorage});

  final LocalStorage localStorage;

  Future<ThemeMode> themeMode() async {
    final themeModeName = localStorage.getString(LocalStorageKey.themeMode);
    return ThemeMode.values.byName(themeModeName ?? ThemeMode.system.name);
  }

  Future<void> updateThemeMode(ThemeMode theme) =>
      localStorage.setString(LocalStorageKey.themeMode, theme.name);

  Future<Locale> locale() async {
    final locale = localStorage.getString(LocalStorageKey.locale);
    return Locale(locale ?? "ru");
  }

  Future<void> updateLocale(Locale locale) =>
      localStorage.setString(LocalStorageKey.locale, locale.languageCode);
}
