import 'dart:async';

import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/models/login_data.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/usecases/get_some_data_usecase.dart';

abstract interface class AuthTokenRepository {
  Future<bool> isAuthorized();

  Future<LoginData> signIn(SignInParams params);

  Future<UserModel> getUser();

  FutureOr<void> logout();
}
