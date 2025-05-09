part of 'ask_question_bloc.dart';

@freezed
abstract class AskQuestionState with _$AskQuestionState {
  const factory AskQuestionState({
    required AskQuestionStatus status,
    @Default("") String question,
    final UserModel? selectedReciter,
    @Default([]) List<int> categories,
  }) = _AskQuestionState;

  factory AskQuestionState.initial() =>
      AskQuestionState(status: AskQuestionStatus.initial);

  const AskQuestionState._();
}
