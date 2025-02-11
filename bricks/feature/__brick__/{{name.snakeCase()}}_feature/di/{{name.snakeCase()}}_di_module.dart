import 'package:common_base/di/base_di_module.dart';
import '../presentation/bloc/{{name.snakeCase()}}_bloc.dart';
import '../domain/repository_interfaces/{{name.snakeCase()}}_repository.dart';
import '../domain/usecases/get_some_data_usecase.dart';
import '../data/repositories/{{name.snakeCase()}}_repository_impl.dart';
import '../data/data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';

class {{name.pascalCase()}}DiModule extends BaseDiModule {
  const {{name.pascalCase()}}DiModule();

  @override
  void initModule(GetIt getIt) {
    getIt 
      // Data
      //
      ..registerFactory<{{name.pascalCase()}}RemoteDataSource>(
        () => const {{name.pascalCase()}}RemoteDataSourceFake(), // TODO replace to Impl:
        // () => {{name.pascalCase()}}RemoteDataSourceImpl(
        //   restClientService: getIt<RestClientService>(),
        // ),
      )
      ..registerFactory<{{name.pascalCase()}}Repository>(
        () => {{name.pascalCase()}}RepositoryImpl(
          remoteDataSource: getIt<{{name.pascalCase()}}RemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetSomeDataUsecase>(
        () => GetSomeDataUsecase(
          getIt<{{name.pascalCase()}}Repository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<{{name.pascalCase()}}Bloc>(
        () => {{name.pascalCase()}}Bloc(
          getSomeDataUsecase: getIt<GetSomeDataUsecase>(),
        ),
      );
  }
}