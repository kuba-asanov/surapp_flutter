import 'dart:async';

abstract interface class AuthTokenRepository {
  Future<bool> isAuthorized();

  FutureOr<void> logout();

}
