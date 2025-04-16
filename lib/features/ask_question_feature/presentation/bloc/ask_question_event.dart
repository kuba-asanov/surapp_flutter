part of 'ask_question_bloc.dart';

sealed class AskQuestionEvent extends Equatable {
  const AskQuestionEvent();

  @override
  List<Object?> get props => [];
}

class SelectUstazEvent extends AskQuestionEvent {
  const SelectUstazEvent(this.user);

  final UserModel user;
}

class TextChangedEvent extends AskQuestionEvent {
  const TextChangedEvent(this.text);

  final String text;
}



class CreateQuestionEvent extends AskQuestionEvent {
  const CreateQuestionEvent();
}
