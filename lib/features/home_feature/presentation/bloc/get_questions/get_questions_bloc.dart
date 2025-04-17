import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/answer_to_question_usecase.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_questions_usecase.dart';

import '../../../data/models/post_model/post_model.dart';

part 'get_questions_event.dart';
part 'get_questions_state.dart';
part 'get_questions_status.dart';
part 'get_questions_bloc.freezed.dart';

class GetQuestionsBloc extends Bloc<QuestionsEvent, GetQuestionsState> {
  GetQuestionsBloc({
    required GetQuestionsUsecase getQuestionsUsecase,
    required AnswerToQuestionUsecase answerToQuestion,
  })  : _getQuestionsUsecase = getQuestionsUsecase,
        _answerToQuestion = answerToQuestion,
        super(GetQuestionsState.initial()) {
    on<GetQuestionsEvent>((event, emit) async {
      emit(state.copyWith(status: GetQuestionsStatus.loading));

      final result = await _getQuestionsUsecase.invoke(GetQuestionsParams());

      result.fold(
        onFailure: (failure) {
          emit(state.copyWith(errorMessage: failure.message));
        },
        onSuccess: (result) {
          emit(state.copyWith(
              questions: result.data, status: GetQuestionsStatus.loaded));
        },
      );
    });
    on<TextChangedEvent>((event, emit) async {
      emit(state.copyWith(answer: event.text));
    });
    on<CreateAnswerEvent>((event, emit) async {
      emit(state.copyWith(status: GetQuestionsStatus.loading));

      final result = await _answerToQuestion.invoke(
        AnswerToQuestionParams(
          id: event.questionId,
          answer: state.answer,
        ),
      );

      result.fold(
        onFailure: (failure) {
          emit(state.copyWith(errorMessage: failure.message));
        },
        onSuccess: (_) {
          emit(state.copyWith(status: GetQuestionsStatus.loaded));
        },
      );
    });
  }
  final GetQuestionsUsecase _getQuestionsUsecase;
  final AnswerToQuestionUsecase _answerToQuestion;
}
