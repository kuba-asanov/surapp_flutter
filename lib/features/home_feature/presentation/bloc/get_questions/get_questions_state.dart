part of 'get_questions_bloc.dart';

@freezed
abstract class GetQuestionsState with _$GetQuestionsState {
  const factory GetQuestionsState({
    required GetQuestionsStatus status,
    @Default([]) List<PostModel> questions,
    String? errorMessage,
    @Default('') String answer,
  }) = _GetQuestionsState;

  factory GetQuestionsState.initial() =>
      GetQuestionsState(status: GetQuestionsStatus.initial);

  const GetQuestionsState._();
}
