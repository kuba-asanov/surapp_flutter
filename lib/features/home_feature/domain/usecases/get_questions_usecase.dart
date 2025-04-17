// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/home_feature/data/models/response_post_model/response_post_model.dart';

import '../repository_interfaces/home_repository.dart';

class GetQuestionsUsecase extends BaseUseCase<ResponseModel, GetQuestionsParams> {
  GetQuestionsUsecase(HomeRepository homeRepository) : _repository = homeRepository;

  final HomeRepository _repository;

  @override
  FutureOr<ResponseModel> makeRequest(GetQuestionsParams params) {
    return _repository.getQuestions();
  }
}

class GetQuestionsParams {
  GetQuestionsParams();
}
