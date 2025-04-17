import 'dart:async';
import 'package:surapp_flutter/features/home_feature/data/models/response_post_model/response_post_model.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/answer_to_question_usecase.dart';

import '../../domain/repository_interfaces/home_repository.dart';
import '../data_sources/remote/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({
    required HomeRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final HomeRemoteDataSource _remoteDataSource;

  @override
  Future<ResponseModel> getPosts() {
    return _remoteDataSource.getPosts();
  }

  @override
  Future<ResponseModel> getQuestions() {
    return _remoteDataSource.getQuestions();
  }
  
  @override
  Future<void> answerToQuestion(AnswerToQuestionParams params) {
    return _remoteDataSource.answerToQuestion(params);
  }
  
}
