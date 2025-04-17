import 'package:surapp_flutter/features/home_feature/domain/usecases/answer_to_question_usecase.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_questions_usecase.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_questions/get_questions_bloc.dart';
import 'package:take_it/take_it.dart';

import '../domain/repository_interfaces/home_repository.dart';

class QuestionsDiModule extends DiModule {
  QuestionsDiModule();

  @override
  void setup(SyncRegistrar it) {
    it
      // Domain
      //
      ..registerFactory<GetQuestionsUsecase>(
        () => GetQuestionsUsecase(
          get<HomeRepository>(),
        ),
      )
      ..registerFactory<AnswerToQuestionUsecase>(
        () => AnswerToQuestionUsecase(
          get<HomeRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<GetQuestionsBloc>(
        () => GetQuestionsBloc(
          getQuestionsUsecase: get<GetQuestionsUsecase>(),
          answerToQuestion: get<AnswerToQuestionUsecase>(),
        ),
      );
  }
}
