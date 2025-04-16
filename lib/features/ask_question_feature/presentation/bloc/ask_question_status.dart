part of 'ask_question_bloc.dart';

enum AskQuestionStatus {
  initial,
  loading,
  loaded,
  failure;

  bool get isInitial => this == AskQuestionStatus.initial;
  bool get isLoading => this == AskQuestionStatus.loading;
  bool get isLoaded => this == AskQuestionStatus.loaded;
  bool get isFailure => this == AskQuestionStatus.failure;
}
