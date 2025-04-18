part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  loaded,
  failure;

  bool get isInitial => this == SignUpStatus.initial;
  bool get isLoading => this == SignUpStatus.loading;
  bool get isLoaded => this == SignUpStatus.loaded;
  bool get isFailure => this == SignUpStatus.failure;
}
