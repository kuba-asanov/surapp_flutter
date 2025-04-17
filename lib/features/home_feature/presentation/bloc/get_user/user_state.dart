part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required UserStatus status,
    UserModel? user,
  }) = _UserState;

  factory UserState.initial() => UserState(status: UserStatus.initial);

  const UserState._();
}
