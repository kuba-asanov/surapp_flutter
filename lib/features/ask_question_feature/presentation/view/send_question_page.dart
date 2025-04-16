import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/features/ask_question_feature/di/ask_question_di_module.dart';
import 'package:surapp_flutter/features/ask_question_feature/presentation/bloc/ask_question_bloc.dart';
import 'package:take_it/take_it.dart';

import 'send_question_view.dart';

@RoutePage()
class SendQuestionPage extends StatelessWidget {
  const SendQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      createModule: AskQuestionDiModule.new,
      builder: (_, module) {
        return SendQuestioniew(bloc: module.get<AskQuestionBloc>());
      },
    );
  }
}
