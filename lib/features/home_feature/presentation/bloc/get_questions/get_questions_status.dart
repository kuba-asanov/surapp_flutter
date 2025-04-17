part of 'get_questions_bloc.dart';

enum GetQuestionsStatus {
  initial,
  loading,
  loaded,
  failure;

  bool get isInitial => this == GetQuestionsStatus.initial;
  bool get isLoading => this == GetQuestionsStatus.loading;
  bool get isLoaded => this == GetQuestionsStatus.loaded;
  bool get isFailure => this == GetQuestionsStatus.failure;
}
