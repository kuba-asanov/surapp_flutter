import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/common/utils/data_parser.dart';
import '../../models/some_data_response/some_data_response.dart';

abstract interface class SignInRemoteDataSource {
  FutureOr<SomeDataResponse> verifyPhoneNumber();
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  const SignInRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  Future<SomeDataResponse> verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+996 706 74 76 75',
      verificationCompleted: (credential) {},
      verificationFailed: (e) {},
      codeSent: (verificationId, resendToken) {},
      codeAutoRetrievalTimeout: (verificationId) {},
    );
    return _restClientService.get(
      'StreamUrls.someData',
      parser: ObjectParser(SomeDataResponse.fromJson),
    );
  }
}

class SignInRemoteDataSourceFake implements SignInRemoteDataSource {
  const SignInRemoteDataSourceFake();

  @override
  FutureOr<SomeDataResponse> verifyPhoneNumber() {
    return SomeDataResponse();
  }
}
