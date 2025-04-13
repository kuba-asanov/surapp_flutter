import 'package:equatable/equatable.dart';

class LoginData with EquatableMixin {
  const LoginData(this.accessToken);

  final String accessToken;

  @override
  List<Object?> get props => [];
}
