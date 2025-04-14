import 'dart:async';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

abstract interface class AskQuestionRepository {
  Future<List<UserModel>> getReciters();
}
