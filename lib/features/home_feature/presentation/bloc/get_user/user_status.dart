part of 'user_bloc.dart';

enum UserStatus {
  initial,
  loading,
  loaded,
  failure;

  bool get isInitial => this == UserStatus.initial;
  bool get isLoading => this == UserStatus.loading;
  bool get isLoaded => this == UserStatus.loaded;
  bool get isFailure => this == UserStatus.failure;
}
