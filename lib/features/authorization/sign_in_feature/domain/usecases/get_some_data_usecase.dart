// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/models/login_data.dart';

import '../repository_interfaces/sign_in_repository.dart';

class SignInUseCase extends BaseUseCase<LoginData, SignInParams> {
  SignInUseCase(SignInRepository signInRepository)
      : _repository = signInRepository;

  final SignInRepository _repository;

  @override
  FutureOr<LoginData> makeRequest(SignInParams params) {
    return _repository.signIn(params);
  }
}

class SignInParams {
  SignInParams(
    this.username,
    this.password,
  );

  final String username;
  final String password;
}
