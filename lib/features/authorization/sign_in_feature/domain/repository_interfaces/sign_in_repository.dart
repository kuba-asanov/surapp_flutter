import 'dart:async';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/models/login_data.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/usecases/get_some_data_usecase.dart';

abstract interface class SignInRepository {
  Future<LoginData> signIn(SignInParams params);
}
