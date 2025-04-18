// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';

import '../repository_interfaces/sign_in_repository.dart';

class SignUpUseCase extends BaseUseCase<void, SignUpParams> {
  SignUpUseCase(SignUpRepository signUpRepository)
      : _repository = signUpRepository;

  final SignUpRepository _repository;

  @override
  FutureOr<void> makeRequest(SignUpParams params) {
    return _repository.signUp(params);
  }
}

class SignUpParams {
  SignUpParams(
    this.username,
    this.password,
    this.phone,
    this.email,
  );

  final String username;
  final String password;
  final String? phone;
  final String? email;
}
