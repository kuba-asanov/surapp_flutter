import 'dart:async';

import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/common/utils/empty_usecase_params.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/auth_token_repository.dart';

class CheckIsAuthorizedUseCase extends BaseUseCase<bool, EmptyUseCaseParams> {
  CheckIsAuthorizedUseCase(this.repository);

  final AuthTokenRepository repository;

  @override
  FutureOr<bool> makeRequest(EmptyUseCaseParams params) {
    return repository.isAuthorized();
  }

  FutureOr<bool> get isAuthorized async =>
      (await invoke(const EmptyUseCaseParams())).fold(
        onFailure: (_) => false,
        onSuccess: (isAuthorized) => isAuthorized,
      );
}
