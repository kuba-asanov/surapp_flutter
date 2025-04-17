import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/features/home_feature/data/models/post_model/post_model.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_questions/get_questions_bloc.dart';

import 'answer_to_question_view.dart';

@RoutePage()
class AnswerToQuestionPage extends StatelessWidget {
  const AnswerToQuestionPage({
    super.key,
    required this.question,
    required this.bloc,
  });
  final PostModel question;
  final GetQuestionsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return AnswerToQuestionView(
      bloc: bloc,
      question: question,
    );
  }
}
