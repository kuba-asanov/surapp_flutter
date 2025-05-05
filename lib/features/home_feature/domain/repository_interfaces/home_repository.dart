import 'dart:async';

import 'package:surapp_flutter/features/home_feature/domain/usecases/answer_to_question_usecase.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_posts_usecase.dart';

import '../../data/models/response_post_model/response_post_model.dart';

abstract interface class HomeRepository {
  Future<ResponseModel> getPosts(GetPostsParams params);
  Future<ResponseModel> getQuestions();
  Future<void> answerToQuestion(AnswerToQuestionParams params);
}
