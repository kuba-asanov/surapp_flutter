import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'add_phone_view.dart';


@RoutePage()
class AddPhonePage extends StatelessWidget {
  const AddPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddPhoneView();
  }
}
