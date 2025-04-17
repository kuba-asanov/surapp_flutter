import 'dart:async';

import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/auth_token_repository.dart';

class GetUserUseCase extends BaseUseCase<UserModel, GetUserParams> {
  GetUserUseCase(this.repository);

  final AuthTokenRepository repository;

  @override
  FutureOr<UserModel> makeRequest(GetUserParams params) {
    return repository.getUser();
  }
}

class GetUserParams {
  GetUserParams();
}
