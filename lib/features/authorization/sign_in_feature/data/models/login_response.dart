import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponse {
  const LoginResponse(this.accessToken);
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @JsonKey(name: "access_token")
  final String accessToken;
}
