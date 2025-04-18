import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';
import 'package:take_it/take_it.dart';

import '../data/data_sources/remote/sign_in_remote_data_source.dart';
import '../data/repositories/sign_in_repository_impl.dart';
import '../domain/repository_interfaces/sign_in_repository.dart';
import '../domain/usecases/get_some_data_usecase.dart';
import '../presentation/bloc/sign_up/sign_up_bloc.dart';

class SignUpDiModule extends DiModule {
  SignUpDiModule();

  @override
  void setup(SyncRegistrar it) {
    it
      // Data
      //
      ..registerFactory<SignUpRemoteDataSource>(
        () => SignUpRemoteDataSourceImpl(
          restClientService: get<AuthRestClient>(),
        ),
      )
      ..registerFactory<SignUpRepository>(
        () => SignUpRepositoryImpl(
          remoteDataSource: get<SignUpRemoteDataSource>(),
          secureStorage: get<SecureStorage>(),
        ),
      )

      // Domain
      //
      ..registerFactory<SignUpUseCase>(
        () => SignUpUseCase(
          get<SignUpRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<SignUpBloc>(
        () => SignUpBloc(
          signUpUseCase: get<SignUpUseCase>(),
        ),
      );
  }
}
