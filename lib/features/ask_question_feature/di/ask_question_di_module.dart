import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:take_it/take_it.dart';

import '../data/data_sources/remote/ask_question_remote_data_source.dart';
import '../data/repositories/ask_question_repository_impl.dart';
import '../domain/repository_interfaces/ask_question_repository.dart';
import '../domain/usecases/ask_question_usecase.dart';
import '../presentation/bloc/ask_question_bloc.dart';

class AskQuestionDiModule extends DiModule {
  AskQuestionDiModule();

  @override
  void setup(SyncRegistrar it) {
    it
      // Data
      //
      ..registerFactory<AskQuestionRemoteDataSource>(
        () => AskQuestionRemoteDataSourceImpl(
          restClientService: get<AuthRestClient>(),
        ),
      )
      ..registerFactory<AskQuestionRepository>(
        () => AskQuestionRepositoryImpl(
          remoteDataSource: get<AskQuestionRemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<AskQuestionUsecase>(
        () => AskQuestionUsecase(
          get<AskQuestionRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<AskQuestionBloc>(
        () => AskQuestionBloc(
          askQuestionUsecase: get<AskQuestionUsecase>(),
        ),
      );
  }
}
