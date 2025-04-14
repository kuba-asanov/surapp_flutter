import 'dart:async';
import '../../../../../common/app_urls.dart';
import '../../../../../common/network/auth_rest_client.dart';
import '../../../../../common/utils/data_parser.dart';
import '../../models/response_post_model/response_post_model.dart';
import '../../models/some_data_response/some_data_response.dart';

abstract interface class HomeRemoteDataSource {
  FutureOr<SomeDataResponse> getSomeData();
  Future<ResponseModel> getPosts();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  const HomeRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<SomeDataResponse> getSomeData() {
    return _restClientService.get(
      'AppUrls.someData',
      parser: ObjectParser(SomeDataResponse.fromJson),
    );
  }

  @override
  Future<ResponseModel> getPosts() {
    return _restClientService.get(
      AppUrls.posts,
      parser: ObjectParser(ResponseModel.fromJson),
    );
  }
}

// class HomeRemoteDataSourceFake implements HomeRemoteDataSource {
//   const HomeRemoteDataSourceFake();

//   @override
//   FutureOr<SomeDataResponse> getSomeData() {
//     return SomeDataResponse();
//   }

//   @override
//   Future<ResponseModel> getPosts() {
//     // TODO: implement getPosts
//     throw UnimplementedError();
//   }
// }
