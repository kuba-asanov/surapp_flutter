import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable(createFactory: false)
class SignUpRequest {
  const SignUpRequest(
    this.username,
    this.password,
    this.phone,
    this.email,
  );

  final String username;
  final String password;
  final String? phone;
  final String? email;

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
