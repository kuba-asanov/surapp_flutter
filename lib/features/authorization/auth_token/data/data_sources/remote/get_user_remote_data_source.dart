import 'dart:async';

import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../../../../../../common/app_urls.dart';
import '../../../../../../common/network/auth_rest_client.dart';
import '../../../../../../common/utils/data_parser.dart';

abstract interface class GetUserRemoteDataSource {
  Future<UserModel> getUser({required int id});
}

class GetUserRemoteDataSourceImpl implements GetUserRemoteDataSource {
  const GetUserRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  Future<UserModel> getUser({required int id}) {
    return _restClientService.get(
      "${AppUrls.getUser}/$id",
      parser: ObjectParser(UserModel.fromJson),
    );
  }
}
