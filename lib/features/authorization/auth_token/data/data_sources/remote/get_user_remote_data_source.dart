import 'dart:async';

import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/models/login_response.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/models/sign_in_request.dart';

import '../../../../../../common/app_urls.dart';
import '../../../../../../common/network/auth_rest_client.dart';
import '../../../../../../common/utils/data_parser.dart';

abstract interface class UserRemoteDataSource {
  Future<UserModel> getUser({required int id});
  FutureOr<LoginResponse> signIn(SignInRequest request);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl({
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

  @override
  Future<LoginResponse> signIn(SignInRequest request) async {
    return _restClientService.post(
      AppUrls.auth,
      body: request.toJson(),
      parser: ObjectParser(LoginResponse.fromJson),
    );
  }
}
