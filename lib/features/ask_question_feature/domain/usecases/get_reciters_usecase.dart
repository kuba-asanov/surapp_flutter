// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../repository_interfaces/ask_question_repository.dart';

class GetRecitersUsecase
    extends BaseUseCase<List<UserModel>, GetRecitersParams>{
  GetRecitersUsecase(AskQuestionRepository askQuestionRepository): 
    _repository = askQuestionRepository;

  final AskQuestionRepository _repository;

  @override
  FutureOr<List<UserModel>> makeRequest(GetRecitersParams params) {
    return _repository.getReciters();
  }
}

class GetRecitersParams {
  GetRecitersParams();
}