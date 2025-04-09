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
        () => const SignInRemoteDataSourceFake(), // TODO replace to Impl:
        // () => SignInRemoteDataSourceImpl(
        //   restClientService: get<RestClientService>(),
        // ),
      )
      ..registerFactory<SignInRepository>(
        () => SignInRepositoryImpl(
          remoteDataSource: get<SignInRemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetSomeDataUsecase>(
        () => GetSomeDataUsecase(
          get<SignInRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<SignInBloc>(
        () => SignInBloc(
          getSomeDataUsecase: get<GetSomeDataUsecase>(),
        ),
      );
  }
}
