part of 'sign_in_bloc.dart';

sealed class SignInEvent extends Equatable{
  const SignInEvent();

  @override
  List<Object?> get props => [];
}

class InitEvent extends SignInEvent{
  const InitEvent();
}
