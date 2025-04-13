import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:surapp_flutter/common/app_urls.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/common/utils/data_parser.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/data/models/sign_in_request.dart';
import '../../models/login_response.dart';

abstract interface class SignInRemoteDataSource {
  FutureOr<LoginResponse> signIn(SignInRequest request);
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  const SignInRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  Future<LoginResponse> signIn(SignInRequest request) async {
    // print("verifyPhoneNumber1");
    // final auth = FirebaseAuth.instance;

    // try {
    //   print("verifyPhoneNumber2");
    //   await auth.signIn(
    //     phoneNumber: '+996 706 74 76 75',
    //     verificationCompleted: (credential) async {
    //       // ANDROID ONLY!

    //       print(credential);
    //       // Sign the user in (or link) with the auto-generated credential
    //       await auth.signInWithCredential(credential);
    //     },
    //     verificationFailed: (e) {
    //       print(e);
    //     },
    //     codeSent: (verificationId, resendToken) async {
    //       // Update the UI - wait for the user to enter the SMS code
    //       final smsCode = 'xxxx';

    //       // Create a PhoneAuthCredential with the code
    //       final credential = PhoneAuthProvider.credential(
    //           verificationId: verificationId, smsCode: smsCode);

    //       // Sign the user in (or link) with the credential
    //       await auth.signInWithCredential(credential);
    //     },
    //     codeAutoRetrievalTimeout: (verificationId) {},
    //   );
    // } catch (e) {
    //   print(e);
    // }

    return _restClientService.post(
      AppUrls.auth,
      body: request.toJson(),
      parser: ObjectParser(LoginResponse.fromJson),
    );
  }
}
