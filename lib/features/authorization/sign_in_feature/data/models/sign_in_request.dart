import 'package:json_annotation/json_annotation.dart';

part 'sign_in_request.g.dart';

@JsonSerializable(createFactory: false)
class SignInRequest {
  const SignInRequest(
    this.username,
    this.password,
  );

  final String username;
  final String password;

  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}
