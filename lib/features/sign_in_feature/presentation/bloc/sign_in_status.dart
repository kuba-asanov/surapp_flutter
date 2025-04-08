part of 'sign_in_bloc.dart';

enum SignInStatus {
  initial,
  loading,
  loaded,
  failure;

  bool get isInitial => this == SignInStatus.initial;
  bool get isLoading => this == SignInStatus.loading;
  bool get isLoaded => this == SignInStatus.loaded;
  bool get isFailure => this == SignInStatus.failure;
}
