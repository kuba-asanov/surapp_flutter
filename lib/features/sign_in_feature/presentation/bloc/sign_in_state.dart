part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    required SignInStatus status,
    SomeData? someData,
  }) = _SignInState;

  factory SignInState.initial() =>
      const SignInState(status: SignInStatus.initial);

  const SignInState._();
}
