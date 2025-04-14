part of 'ask_question_bloc.dart';

sealed class AskQuestionState extends Equatable {
  const AskQuestionState();

  @override
  List<Object?> get props => [];
}

class InitialAskQuestionState extends AskQuestionState {}

class LoadingAskQuestionState extends AskQuestionState {}

class LoadedAskQuestionState extends AskQuestionState {
  const LoadedAskQuestionState({
    required this.reciters,
    this.selectedReciter,
  });

  final List<UserModel> reciters;
  final UserModel? selectedReciter;

  @override
  List<Object?> get props => [
        reciters,
        selectedReciter,
      ];
}
