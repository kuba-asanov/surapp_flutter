part of 'ask_question_bloc.dart';

sealed class AskQuestionEvent extends Equatable {
  const AskQuestionEvent();

  @override
  List<Object?> get props => [];
}

class GetRecitersEvent extends AskQuestionEvent {
  const GetRecitersEvent();
}

class CreateQuestionEvent extends AskQuestionEvent {
  const CreateQuestionEvent();
}
