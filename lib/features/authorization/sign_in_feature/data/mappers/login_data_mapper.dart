import 'package:surapp_flutter/features/authorization/sign_in_feature/domain/models/login_data.dart';

import '../models/login_response.dart';

extension LoginDataMapper on LoginResponse {
  LoginData toEntity() => LoginData(accessToken);
}
