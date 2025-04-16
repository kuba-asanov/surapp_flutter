// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/ask_question_request.dart';

import '../repository_interfaces/ask_question_repository.dart';

class AskQuestionUsecase
    extends BaseUseCase<void, AskQuestionRequest> {
  AskQuestionUsecase(AskQuestionRepository askQuestionRepository)
      : _repository = askQuestionRepository;

  final AskQuestionRepository _repository;

  @override
  FutureOr<void> makeRequest(AskQuestionRequest request) {
    return _repository.askQuestion(request);
  }
}

