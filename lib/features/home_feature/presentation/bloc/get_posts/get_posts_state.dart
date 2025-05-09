part of 'get_posts_bloc.dart';


@freezed
abstract class GetPostsState with _$GetPostsState {
  const factory GetPostsState({
    required GetPostsStatus status,
    @Default([]) List<PostModel> data,
    String? errorMessage,
    @Default([])List<int > categories,
  }) = _GetPostsState;

  factory GetPostsState.initial() =>
      GetPostsState(status: GetPostsStatus.initial);

  const GetPostsState._();
}
