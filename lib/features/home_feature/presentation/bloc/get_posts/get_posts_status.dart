part of 'get_posts_bloc.dart';

enum GetPostsStatus {
  initial,
  loading,
  loaded,
  failure;

  bool get isInitial => this == GetPostsStatus.initial;
  bool get isLoading => this == GetPostsStatus.loading;
  bool get isLoaded => this == GetPostsStatus.loaded;
  bool get isFailure => this == GetPostsStatus.failure;
}
