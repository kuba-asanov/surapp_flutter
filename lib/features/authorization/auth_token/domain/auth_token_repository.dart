import 'dart:async';

import 'package:surapp_flutter/features/authorization/auth_token/domain/models/user_model/get_user_model.dart';

abstract interface class AuthTokenRepository {
  Future<bool> isAuthorized();

  Future<GetUserModel> getUser();

  FutureOr<void> logout();
}
