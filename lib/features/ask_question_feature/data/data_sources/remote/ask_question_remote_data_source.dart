import 'dart:async';
import 'package:surapp_flutter/common/app_urls.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/common/utils/data_parser.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

abstract interface class AskQuestionRemoteDataSource {
  FutureOr<List<UserModel>> getReciters();
}

class AskQuestionRemoteDataSourceImpl implements AskQuestionRemoteDataSource {
  const AskQuestionRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<List<UserModel>> getReciters() {
    return _restClientService.get(
      AppUrls.reciters,
      parser: ListParser(UserModel.fromJson),
    );
  }
}
