import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surapp_flutter/common/app_urls.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/common/network/locale_interceptor.dart';
import 'package:surapp_flutter/common/network/unauth_rest_client.dart';
import 'package:surapp_flutter/core/storage/local_storage.dart';
import 'package:surapp_flutter/core/storage/local_storage_impl.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:surapp_flutter/core/storage/secure_storage_impl.dart';
import 'package:surapp_flutter/features/settings/data/settings_service.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_locale_usecase.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_theme_usecase.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:take_it/take_it.dart';

const networkTimeout = Duration(seconds: 60);

class CoreDiModule extends DiModuleAsync {
  @override
  Future<void> setup(AsyncRegistrar it) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    it
      ..registerSingleton<LocalStorage>(
        LocalStorageImpl(sharedPreferences),
      )
      ..registerSingleton<SecureStorage>(
        SecureStorageImpl(),
      )

      /// Data
      ///
      ..registerSingleton<SettingsService>(
        SettingsService(localStorage: get<LocalStorage>()),
      );

    final themeMode = await get<SettingsService>().themeMode();
    final locale = await get<SettingsService>().locale();

    /// Network
    ///
    final aliceDioAdapter = AliceDioAdapter();

    it
      ..registerFactory(
        () => Alice(
          configuration: AliceConfiguration(
            showNotification: false,
            showInspectorOnShake: true,
          ),
        )..addAdapter(aliceDioAdapter),
      )
      ..registerFactory(() {
        final dio = Dio(BaseOptions(
          baseUrl: AppUrls.baseUrl,
          receiveTimeout: networkTimeout,
          connectTimeout: networkTimeout,
        ));
        dio.interceptors.addAll([
          LocaleInterceptor(
            localeGetter: locale.languageCode.toUpperCase,
          ),
          aliceDioAdapter,
        ]);
        if (kDebugMode) {
          dio.interceptors.add(
            LogInterceptor(
              responseBody: true,
              requestBody: true,
              logPrint: (object) {
                final pattern = RegExp('.{1,800}');

                pattern
                    .allMatches(object.toString())
                    .forEach((match) => debugPrint(match.group(0)));
              },
            ),
          );
        }
        return dio;
      })
      ..registerSingleton(AuthRestClient(
        get<Dio>(),
        get<SecureStorage>(),
      ))
      ..registerSingleton(UnAuthRestClient(
        get<Dio>(),
      ))

      /// Domain
      ///
      ..registerFactory<UpdateThemeUsecase>(
        () => UpdateThemeUsecase(get<SettingsService>()),
      )
      ..registerFactory<UpdateLocaleUsecase>(
        () => UpdateLocaleUsecase(get<SettingsService>()),
      );

    /// Presentation
    ///
    it.registerLazySingleton<SettingsBloc>(
      () {
        return SettingsBloc(
          themeMode: themeMode,
          locale: locale,
          updateThemeUsecase: get<UpdateThemeUsecase>(),
          updateLocaleUsecase: get<UpdateLocaleUsecase>(),
        );
      },
      dispose: (instance) => instance.close(),
    );
  }
}
