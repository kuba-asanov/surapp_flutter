part of 'get_posts_bloc.dart';

sealed class PostsEvent {}

class GetPostsEvent extends PostsEvent {
  GetPostsEvent({required this.params});

  final GetPostsParams params;
}
