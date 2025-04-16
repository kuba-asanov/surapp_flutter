import 'dart:async';

import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/auth_token_repository.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/models/user_model/get_user_model.dart';

class GetUserUseCase extends BaseUseCase<GetUserModel, GetUserParams> {
  GetUserUseCase(this.repository);

  final AuthTokenRepository repository;

  @override
  FutureOr<GetUserModel> makeRequest(GetUserParams params) {
    return repository.getUser();
  }
}

class GetUserParams {
  GetUserParams();
}
