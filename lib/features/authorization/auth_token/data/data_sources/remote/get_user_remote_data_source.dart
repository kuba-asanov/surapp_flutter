import 'dart:async';

import '../../../../../../common/app_urls.dart';
import '../../../../../../common/network/auth_rest_client.dart';
import '../../../../../../common/utils/data_parser.dart';
import '../../../domain/models/user_model/get_user_model.dart';

abstract interface class GetUserRemoteDataSource {
  Future<GetUserModel> getUser({required int id});
}

class GetUserRemoteDataSourceImpl implements GetUserRemoteDataSource {
  const GetUserRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  Future<GetUserModel> getUser({required int id}) {
    return _restClientService.get(
      "${AppUrls.getUser}/$id",
      parser: ObjectParser(GetUserModel.fromJson),
    );
  }
}
