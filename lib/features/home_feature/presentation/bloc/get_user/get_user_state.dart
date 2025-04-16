part of 'get_user_bloc.dart';

@freezed
class GetUserState with _$GetUserState {
  const factory GetUserState.initial() = GetUserInitial;
  const factory GetUserState.loading() = GetUserLoading;
  const factory GetUserState.error({
    required String errorMessage,
  }) = GetUserError;
  const factory GetUserState.fetched({
    required GetUserModel user,
  }) = GetUserFetched;
}
