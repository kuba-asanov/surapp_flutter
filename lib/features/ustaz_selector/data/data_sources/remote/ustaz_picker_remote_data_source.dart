import 'dart:async';
import 'package:surapp_flutter/common/app_urls.dart';
import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../../../../../common/utils/data_parser.dart';

abstract interface class UstazPickerRemoteDataSource {
  FutureOr<List<UserModel>> getReciters();
}

class UstazPickerRemoteDataSourceImpl implements UstazPickerRemoteDataSource {
  const UstazPickerRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<List<UserModel>> getReciters() {
    return _restClientService.get(
      AppUrls.reciters,
      parser: ListParser(UserModel.fromJson,
          (json) => json.map((e) => UserModel.fromJson(e)).toList(),
          forKey: "data"),
    );
  }
}
