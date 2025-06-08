import 'dart:async';
import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/mappers/login_data_mapper.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/models/sign_in_request.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/models/login_data.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/usecases/get_some_data_usecase.dart';

import '../../domain/repository_interfaces/sign_in_repository.dart';
import '../data_sources/remote/sign_in_remote_data_source.dart';

class SignInRepositoryImpl implements SignInRepository {
  SignInRepositoryImpl({
    required SignInRemoteDataSource remoteDataSource,
    required SecureStorage secureStorage,
  })  : _remoteDataSource = remoteDataSource,
        _secureStorage = secureStorage;

  final SignInRemoteDataSource _remoteDataSource;
  final SecureStorage _secureStorage;

  @override
  Future<LoginData> signIn(SignInParams params) async {
    final response = await _remoteDataSource.signIn(
      SignInRequest(
        params.username,
        params.password,
      ),
    );
    await _secureStorage.setValue(SecureStorageKey.authToken, response.accessToken);
    return response.toEntity();
  }
}
