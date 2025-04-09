import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:surapp_flutter/common/network/app_failure.dart';
import 'package:surapp_flutter/common/utils/result.dart';
import 'package:surapp_flutter/common/utils/usecase_error_converter.dart';

abstract class BaseUseCase<T, P> {
  const BaseUseCase({
    UseCaseErrorConverter<AppFailure> errorConverter =
        const AppFailureUseCaseErrorParser(),
  }) : _errorConverter = errorConverter;

  final UseCaseErrorConverter<AppFailure> _errorConverter;

  FutureOr<Result<AppFailure, T>> invoke(P params) async {
    try {
      final result = await makeRequest(params);
      return result is Result
          ? result.fold(
              onFailure: (e) => Result.failure(e),
              onSuccess: (s) => Result.success(s),
            )
          : Result.success(result);
    } catch (e, stackTrace) {
      final error = _convertError(e, stackTrace);

      return Result.failure(error);
    }
  }

  AppFailure _convertError(Object error, StackTrace stackTrace) {
    return _errorConverter.convert(error, stackTrace);
  }

  @protected
  FutureOr<T> makeRequest(P params);
}

abstract class BaseSyncUseCase<T, P> {
  const BaseSyncUseCase({
    UseCaseErrorConverter<AppFailure> errorConverter =
        const AppFailureUseCaseErrorParser(),
  }) : _errorConverter = errorConverter;

  final UseCaseErrorConverter<AppFailure> _errorConverter;

  Result<AppFailure, T> invoke(P params) {
    try {
      final result = makeRequest(params);
      return result is Result
          ? result.fold(
              onFailure: (e) => Result.failure(e),
              onSuccess: (s) => Result.success(s),
            )
          : Result.success(result);
    } catch (e, stackTrace) {
      final error = _convertError(e, stackTrace);

      return Result.failure(error);
    }
  }

  AppFailure _convertError(Object error, StackTrace stackTrace) {
    return _errorConverter.convert(error, stackTrace);
  }

  @protected
  T makeRequest(P params);
}

abstract class BaseStreamUseCase<T, P> {
  const BaseStreamUseCase();

  Stream<Result<AppFailure, T>> invoke(P params) {
    final source = getSourceStream(params);

    return source.transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          sink.add(Result.success(data));
        },
        handleError: (error, trace, sink) {
          try {
            sink.add(Result.failure(convertError(error, trace)));
          } catch (e, st) {
            sink.addError(e, st);
          }
        },
      ),
    );
  }

  @protected
  AppFailure convertError(Object error, StackTrace stackTrace);

  @protected
  Stream<T> getSourceStream(P params);
}
