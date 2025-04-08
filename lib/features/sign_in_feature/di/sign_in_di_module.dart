import 'package:common_base/di/base_di_module.dart';
import '../presentation/bloc/sign_in_bloc.dart';
import '../domain/repository_interfaces/sign_in_repository.dart';
import '../domain/usecases/get_some_data_usecase.dart';
import '../data/repositories/sign_in_repository_impl.dart';
import '../data/data_sources/remote/sign_in_remote_data_source.dart';

class SignInDiModule extends BaseDiModule {
  const SignInDiModule();

  @override
  void initModule(GetIt getIt) {
    getIt 
      // Data
      //
      ..registerFactory<SignInRemoteDataSource>(
        () => const SignInRemoteDataSourceFake(), // TODO replace to Impl:
        // () => SignInRemoteDataSourceImpl(
        //   restClientService: getIt<RestClientService>(),
        // ),
      )
      ..registerFactory<SignInRepository>(
        () => SignInRepositoryImpl(
          remoteDataSource: getIt<SignInRemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetSomeDataUsecase>(
        () => GetSomeDataUsecase(
          getIt<SignInRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<SignInBloc>(
        () => SignInBloc(
          getSomeDataUsecase: getIt<GetSomeDataUsecase>(),
        ),
      );
  }
}