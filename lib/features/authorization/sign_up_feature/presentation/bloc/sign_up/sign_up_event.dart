part of 'sign_up_bloc.dart';

@freezed
 abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started({
    required String username,
    required String password,
    String? phone,
    String? email,
  }) = _Started;
}
