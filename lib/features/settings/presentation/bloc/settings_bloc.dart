import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_locale_usecase.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_theme_usecase.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required UpdateThemeUsecase updateThemeUsecase,
    required UpdateLocaleUsecase updateLocaleUsecase,
    ThemeMode? themeMode,
    Locale? locale,
  })  : _updateThemeUsecase = updateThemeUsecase,
        _updateLocaleUsecase = updateLocaleUsecase,
        super(SettingsState(
          themeMode: themeMode,
          locale: locale,
        )) {
    on<UpdateThemeEvent>(_onUpdateTheme);
    on<UpdateLocaleEvent>(_onUpdateLocale);
  }

  final UpdateThemeUsecase _updateThemeUsecase;
  final UpdateLocaleUsecase _updateLocaleUsecase;

  Future<void> _onUpdateTheme(UpdateThemeEvent event, Emitter emit) async {
    final newThemeMode = event.newThemeMode;
    if (newThemeMode == null || newThemeMode == state.themeMode) return;

    await _updateThemeUsecase.invoke(newThemeMode);

    emit(state.copyWith(themeMode: newThemeMode));
  }

  Future<void> _onUpdateLocale(UpdateLocaleEvent event, Emitter emit) async {
    final newLocale = event.newLocale;
    if (newLocale == null || newLocale == state.locale) return;

    await _updateLocaleUsecase.invoke(newLocale);

    emit(state.copyWith(locale: newLocale));
  }
}
