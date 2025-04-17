// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';

import '../repository_interfaces/home_repository.dart';

class AnswerToQuestionUsecase
    extends BaseUseCase<void, AnswerToQuestionParams> {
  AnswerToQuestionUsecase(HomeRepository homeRepository)
      : _repository = homeRepository;

  final HomeRepository _repository;

  @override
  FutureOr<void> makeRequest(AnswerToQuestionParams params) {
    return _repository.answerToQuestion(params);
  }
}

class AnswerToQuestionParams {
  AnswerToQuestionParams({
    required this.id,
    required this.answer,
  });

  final int id;
  final String answer;
}
