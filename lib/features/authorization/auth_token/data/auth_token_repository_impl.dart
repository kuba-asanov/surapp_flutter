import 'dart:async';

import 'package:jwt_decode/jwt_decode.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../domain/auth_token_repository.dart';
import 'data_sources/remote/get_user_remote_data_source.dart';

class AuthTokenRepositoryImpl implements AuthTokenRepository {
  AuthTokenRepositoryImpl(
      {required this.secureStorage,
      required GetUserRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final SecureStorage secureStorage;
  final GetUserRemoteDataSource _remoteDataSource;

  @override
  Future<bool> isAuthorized() async {
    final token = await secureStorage.getValue(SecureStorageKey.authToken);
    var payload = token != null ? Jwt.parseJwt(token) : null;
    print("__________________________________$payload");
    return token?.isNotEmpty ?? false;
  }

  @override
  Future<UserModel> getUser() async {
    final token = await secureStorage.getValue(SecureStorageKey.authToken);

    var payload = token != null ? Jwt.parseJwt(token) : null;
    int userId = payload != null ? payload['sub'] : 0;

    final response = _remoteDataSource.getUser(id: userId);

    return response;
  }

  @override
  FutureOr<void> logout() async {
    secureStorage.deleteValue(SecureStorageKey.authToken);
  }
}
