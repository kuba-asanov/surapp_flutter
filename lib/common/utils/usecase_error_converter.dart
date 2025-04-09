import 'package:surapp_flutter/common/network/app_failure.dart';

abstract interface class UseCaseErrorConverter<T> {
  T convert(Object error, StackTrace stackTrace);
}

final class AppFailureUseCaseErrorParser
    implements UseCaseErrorConverter<AppFailure> {
  const AppFailureUseCaseErrorParser();

  @override
  AppFailure convert(Object error, StackTrace stackTrace) {
    if (error is AppFailure) {
      return error;
    }

    throw error;
  }
}
