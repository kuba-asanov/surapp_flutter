import 'package:take_it/take_it.dart';

import '../data/data_sources/remote/home_remote_data_source.dart';
import '../data/repositories/home_repository_impl.dart';
import '../domain/repository_interfaces/home_repository.dart';
import '../domain/usecases/get_some_data_usecase.dart';
import '../presentation/bloc/home_bloc.dart';

class HomeDiModule extends DiModule {
  HomeDiModule();

  @override
  void setup(SyncRegistrar it) {
    it
      // Data
      //
      ..registerFactory<HomeRemoteDataSource>(
        () => const HomeRemoteDataSourceFake(), // TODO replace to Impl:
        // () => HomeRemoteDataSourceImpl(
        //   restClientService: get<AuthRestClient>(),
        // ),
      )
      ..registerFactory<HomeRepository>(
        () => HomeRepositoryImpl(
          remoteDataSource: get<HomeRemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetSomeDataUsecase>(
        () => GetSomeDataUsecase(
          get<HomeRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<HomeBloc>(
        () => HomeBloc(
          getSomeDataUsecase: get<GetSomeDataUsecase>(),
        ),
      );
  }
}
