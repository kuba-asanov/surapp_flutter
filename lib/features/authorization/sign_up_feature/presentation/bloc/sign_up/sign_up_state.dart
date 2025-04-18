part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required SignUpStatus status,
    String? errorMessage,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(status: SignUpStatus.initial);

  const SignUpState._();
}
