import 'package:surapp_flutter/features/home_feature/domain/usecases/get_categories_usercase.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_categories/get_categories_bloc.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_posts/get_posts_bloc.dart';
import 'package:take_it/take_it.dart';

import '../../../common/network/auth_rest_client.dart';
import '../data/data_sources/remote/home_remote_data_source.dart';
import '../data/repositories/home_repository_impl.dart';
import '../domain/repository_interfaces/home_repository.dart';
import '../domain/usecases/get_posts_usecase.dart';

class HomeDiModule extends DiModule {
  HomeDiModule();

  @override
  void setup(SyncRegistrar it) {
    it
      // Data
      //
      ..registerFactory<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImpl(
          restClientService: get<AuthRestClient>(),
        ),
      )
      ..registerFactory<HomeRepository>(
        () => HomeRepositoryImpl(
          remoteDataSource: get<HomeRemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetPostsUsecase>(
        () => GetPostsUsecase(
          get<HomeRepository>(),
        ),
      )
      ..registerFactory<GetCategoriesUsecase>(
        () => GetCategoriesUsecase(
          get<HomeRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<GetPostsBloc>(
        () => GetPostsBloc(
          getPostsUsecase: get<GetPostsUsecase>(),
        ),
      )
      ..registerFactory<GetCategoriesBloc>(
        () => GetCategoriesBloc(
          usercase: get<GetCategoriesUsecase>(),
        ),
      );
  }
}
