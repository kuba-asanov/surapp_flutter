import 'dart:async';

import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/auth_token_repository.dart';

class AuthTokenRepositoryImpl implements AuthTokenRepository {
  AuthTokenRepositoryImpl(this.secureStorage);

  final SecureStorage secureStorage;

  @override
  Future<bool> isAuthorized() async {
    final token = await secureStorage.getValue(SecureStorageKey.authToken);
    return token?.isNotEmpty ?? false;
  }

  @override
  FutureOr<void> logout() async {
    secureStorage.deleteValue(SecureStorageKey.authToken);
  }
}
