import 'dart:async';
import '../../domain/repository_interfaces/sign_in_repository.dart';
import '../../domain/models/some_data.dart';
import '../data_sources/remote/sign_in_remote_data_source.dart';
import '../mappers/some_data_mapper.dart';

class SignInRepositoryImpl implements SignInRepository {
  SignInRepositoryImpl({
    required SignInRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final SignInRemoteDataSource _remoteDataSource;

  @override
  Future<SomeData> verifyPhoneNumber() async {
    final response = await _remoteDataSource.verifyPhoneNumber();
    return response.toEntity();
  }
}
