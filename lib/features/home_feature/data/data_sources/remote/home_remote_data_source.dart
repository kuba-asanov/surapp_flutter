import 'dart:async';
import '../../../../../common/network/auth_rest_client.dart';
import '../../../../../common/utils/data_parser.dart';
import '../../models/some_data_response/some_data_response.dart';

abstract interface class HomeRemoteDataSource {
  FutureOr<SomeDataResponse> getSomeData();
}

class HomeRemoteDataSourceImpl
    implements HomeRemoteDataSource {
  const HomeRemoteDataSourceImpl({
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

class HomeRemoteDataSourceFake
    implements HomeRemoteDataSource {
  const HomeRemoteDataSourceFake();

  @override
  FutureOr<SomeDataResponse> getSomeData() {
    return SomeDataResponse();
  }
}
