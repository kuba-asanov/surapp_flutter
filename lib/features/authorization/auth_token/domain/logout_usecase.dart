import 'dart:async';

import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/common/utils/empty_usecase_params.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/auth_token_repository.dart';

class LogoutUseCase extends BaseUseCase<void, EmptyUseCaseParams> {
  LogoutUseCase(this.repository);

  final AuthTokenRepository repository;

  @override
  FutureOr<void> makeRequest(EmptyUseCaseParams params) {
    return repository.logout();
  }
}
