import 'dart:async';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/common/utils/data_parser.dart';
import '../../models/some_data_response/some_data_response.dart';

abstract interface class SignInRemoteDataSource {
  FutureOr<SomeDataResponse> getSomeData();
}

class SignInRemoteDataSourceImpl
    implements SignInRemoteDataSource {
  const SignInRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<SomeDataResponse> getSomeData() {
    return _restClientService.get(
      'StreamUrls.someData',
      parser: ObjectParser(SomeDataResponse.fromJson),
    );
  }
}

class SignInRemoteDataSourceFake
    implements SignInRemoteDataSource {
  const SignInRemoteDataSourceFake();

  @override
  FutureOr<SomeDataResponse> getSomeData() {
    return SomeDataResponse();
  }
}
