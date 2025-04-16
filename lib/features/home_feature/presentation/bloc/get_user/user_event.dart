part of 'user_bloc.dart';

sealed class UserEvent {}

class GetUserEvent extends UserEvent {}

class LogoutUserEvent extends UserEvent {}
