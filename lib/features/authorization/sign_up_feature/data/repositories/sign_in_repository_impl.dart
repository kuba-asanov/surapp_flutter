import 'dart:async';
import 'package:surapp_flutter/core/storage/secure_storage.dart';

import '../../domain/repository_interfaces/sign_in_repository.dart';
import '../../domain/usecases/get_some_data_usecase.dart';
import '../data_sources/remote/sign_in_remote_data_source.dart';
import '../models/sign_up_request.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  SignUpRepositoryImpl({
    required SignUpRemoteDataSource remoteDataSource,
    required SecureStorage secureStorage,
  }) : _remoteDataSource = remoteDataSource;

  final SignUpRemoteDataSource _remoteDataSource;

  @override
  Future<void> signUp(SignUpParams params) async {
    await _remoteDataSource.signUp(
      SignUpRequest(
        params.username,
        params.password,
        params.phone,
        params.email,
      ),
    );
    return;
  }
}
