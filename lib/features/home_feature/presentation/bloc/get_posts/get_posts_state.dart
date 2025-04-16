part of 'get_posts_bloc.dart';

@freezed
class GetPostsState with _$GetPostsState {
  const factory GetPostsState.initial() = GetPostsInitial;
  const factory GetPostsState.loading() = GetPostsLoading;
  const factory GetPostsState.error({
    required String errorMessage,
  }) = GetPostsError;
  const factory GetPostsState.fetched({
    required List<PostModel> data,
  }) = GetPostsFetched;
}
