part of 'get_posts_bloc.dart';

@freezed
class GetPostsEvent with _$GetPostsEvent {
  const factory GetPostsEvent.started() = _Started;
}