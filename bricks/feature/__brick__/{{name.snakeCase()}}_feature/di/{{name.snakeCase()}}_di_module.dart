import 'package:take_it/take_it.dart';

import '../data/data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import '../data/repositories/{{name.snakeCase()}}_repository_impl.dart';
import '../domain/repository_interfaces/{{name.snakeCase()}}_repository.dart';
import '../domain/usecases/get_some_data_usecase.dart';
import '../presentation/bloc/{{name.snakeCase()}}_bloc.dart';

class {{name.pascalCase()}}DiModule extends DiModule {
  const {{name.pascalCase()}}DiModule();

  @override
  void setup(SyncRegistrar it) {
    it 
      // Data
      //
      ..registerFactory<{{name.pascalCase()}}RemoteDataSource>(
        () => const {{name.pascalCase()}}RemoteDataSourceFake(), // TODO replace to Impl:
        // () => {{name.pascalCase()}}RemoteDataSourceImpl(
        //   restClientService: get<AuthRestClient>(),
        // ),
      )
      ..registerFactory<{{name.pascalCase()}}Repository>(
        () => {{name.pascalCase()}}RepositoryImpl(
          remoteDataSource: get<{{name.pascalCase()}}RemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetSomeDataUsecase>(
        () => GetSomeDataUsecase(
          get<{{name.pascalCase()}}Repository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<{{name.pascalCase()}}Bloc>(
        () => {{name.pascalCase()}}Bloc(
          getSomeDataUsecase: get<GetSomeDataUsecase>(),
        ),
      );
  }
}