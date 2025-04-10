import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/send_question_view.dart';

@RoutePage()
class SendQuestionPage extends StatelessWidget {
  static const String routeName = '/Profile_page';
  const SendQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SendQuestioniew();
  }
}
