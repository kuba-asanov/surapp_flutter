part of 'sign_in_bloc.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object?> get props => [];
}

class UserNameChangedEvent extends SignInEvent {
  const UserNameChangedEvent({
    required this.username,
  });

  final String username;
}

class PasswordChangedEvent extends SignInEvent {
  const PasswordChangedEvent({
    required this.password,
  });

  final String password;
}

class SignInStartEvent extends SignInEvent {}
