import 'dart:async';

import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

abstract interface class AuthTokenRepository {
  Future<bool> isAuthorized();

  Future<UserModel> getUser();

  FutureOr<void> logout();
}
