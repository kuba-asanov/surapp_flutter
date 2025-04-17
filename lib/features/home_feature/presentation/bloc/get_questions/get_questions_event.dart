part of 'get_questions_bloc.dart';

sealed class QuestionsEvent {}

class GetQuestionsEvent extends QuestionsEvent {}

class TextChangedEvent extends QuestionsEvent {
  TextChangedEvent({required this.text});

  final String text;
}

class CreateAnswerEvent extends QuestionsEvent {
  CreateAnswerEvent({required this.questionId});

  final int questionId;
}
