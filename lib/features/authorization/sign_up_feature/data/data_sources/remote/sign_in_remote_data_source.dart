import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:surapp_flutter/common/app_urls.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';

import '../../models/sign_up_request.dart';

abstract interface class SignUpRemoteDataSource {
  FutureOr<void> signUp(SignUpRequest request);
}

class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  const SignUpRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  Future<void> signUp(SignUpRequest request) async {
    return _restClientService.post(
      AppUrls.signUp,
      body: request.toJson(),
      // parser: ObjectParser(LoginResponse.fromJson),
    );
  }
}
