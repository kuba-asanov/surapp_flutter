import 'dart:async';

import 'package:jwt_decode/jwt_decode.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/mappers/login_data_mapper.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/models/sign_in_request.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/models/login_data.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/usecases/get_some_data_usecase.dart';

import '../domain/auth_token_repository.dart';
import 'data_sources/remote/get_user_remote_data_source.dart';

class AuthTokenRepositoryImpl implements AuthTokenRepository {
  AuthTokenRepositoryImpl({
    required this.secureStorage,
    required UserRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final SecureStorage secureStorage;
  final UserRemoteDataSource _remoteDataSource;

  @override
  Future<LoginData> signIn(SignInParams params) async {
    final response = await _remoteDataSource.signIn(
      SignInRequest(
        params.username,
        params.password,
      ),
    );
    await secureStorage.setValue(
        SecureStorageKey.authToken, response.accessToken);
    return response.toEntity();
  }

  @override
  Future<bool> isAuthorized() async {
    final token = await secureStorage.getValue(SecureStorageKey.authToken);
    print("__________________________________$token");
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
    await secureStorage.deleteValue(SecureStorageKey.authToken);
  }
}
