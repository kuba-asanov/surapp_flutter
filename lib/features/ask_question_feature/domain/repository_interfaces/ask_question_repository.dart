import 'dart:async';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/ask_question_request.dart';

abstract interface class AskQuestionRepository {
  Future<void> askQuestion(AskQuestionRequest request);
}
