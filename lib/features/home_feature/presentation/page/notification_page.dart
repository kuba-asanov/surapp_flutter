import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:surapp_flutter/features/home_feature/di/questions_di_module.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_questions/get_questions_bloc.dart';
import 'package:take_it/take_it.dart';

import '../view/notification_view.dart';

@RoutePage()
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      createModule: QuestionsDiModule.new,
      builder: (context, module) {
        return NotificationView(
          bloc: module.get<GetQuestionsBloc>()..add(GetQuestionsEvent()),
        );
      },
    );
  }
}
