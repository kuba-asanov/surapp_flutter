import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:take_it/take_it.dart';

import '../data/data_sources/remote/sign_in_remote_data_source.dart';
import '../data/repositories/sign_in_repository_impl.dart';
import '../domain/repository_interfaces/sign_in_repository.dart';
import '../domain/usecases/get_some_data_usecase.dart';
import '../presentation/bloc/sign_in_bloc.dart';

class SignInDiModule extends DiModule {
  SignInDiModule();

  @override
  void setup(SyncRegistrar it) {
    it
      // Data
      //
      ..registerFactory<SignInRemoteDataSource>(
        () => SignInRemoteDataSourceImpl(
          restClientService: get<AuthRestClient>(),
        ),
      )
      ..registerFactory<SignInRepository>(
        () => SignInRepositoryImpl(
          remoteDataSource: get<SignInRemoteDataSource>(),
          secureStorage: get<SecureStorage>(),
        ),
      )

      // Domain
      //
      ..registerFactory<SignInUseCase>(
        () => SignInUseCase(
          get<SignInRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<SignInBloc>(
        () => SignInBloc(
          signInUsecase: get<SignInUseCase>(),
        ),
      );
  }
}
