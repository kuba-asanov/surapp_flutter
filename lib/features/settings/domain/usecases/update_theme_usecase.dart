import 'dart:async';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/features/settings/data/settings_service.dart';

class UpdateThemeUsecase {
  UpdateThemeUsecase(SettingsService settingsService)
      : _settingsService = settingsService;

  final SettingsService _settingsService;

  FutureOr<void> invoke(ThemeMode theme) {
    return _settingsService.updateThemeMode(theme);
  }
}
