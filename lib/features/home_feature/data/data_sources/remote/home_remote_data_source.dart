import 'dart:async';
import 'package:surapp_flutter/features/home_feature/domain/usecases/answer_to_question_usecase.dart';

import '../../../../../common/app_urls.dart';
import '../../../../../common/network/auth_rest_client.dart';
import '../../../../../common/utils/data_parser.dart';
import '../../models/response_post_model/response_post_model.dart';

abstract interface class HomeRemoteDataSource {
  Future<ResponseModel> getPosts();
  Future<ResponseModel> getQuestions();
  Future<void> answerToQuestion(AnswerToQuestionParams params);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  const HomeRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  Future<ResponseModel> getPosts() {
    return _restClientService.get(
      AppUrls.answeredPosts,
      params: {'orderField': 'created_at', 'order': 'desc'},
      parser: ObjectParser(ResponseModel.fromJson),
    );
  }

  @override
  Future<ResponseModel> getQuestions() {
    return _restClientService.get(
      AppUrls.questionsForMe,
      // params: {
      //   'orderField': 'created_at',
      //   'order': 'desc'
      // },
      parser: ObjectParser(ResponseModel.fromJson),
    );
  }

  @override
  Future<void> answerToQuestion(AnswerToQuestionParams params) {
    return _restClientService.patch(
      AppUrls.answerToQuestion(params.id),
      body: {'answer': params.answer},
    );
  }
}
