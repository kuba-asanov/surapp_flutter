import 'dart:async';
import 'package:surapp_flutter/common/app_urls.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/ask_question_request.dart';

abstract interface class AskQuestionRemoteDataSource {
  FutureOr<void> askQuestion(AskQuestionRequest request);
}

class AskQuestionRemoteDataSourceImpl implements AskQuestionRemoteDataSource {
  const AskQuestionRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<void> askQuestion(AskQuestionRequest request) {
    return _restClientService.post(
      AppUrls.posts,
      body: request.toJson(),
    );
  }
}
