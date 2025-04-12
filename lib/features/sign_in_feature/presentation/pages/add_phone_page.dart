import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/add_phone_view.dart';

@RoutePage()
class AddPhonePage extends StatelessWidget {
  static const String routeName = '/add_phone_page';
  const AddPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddPhoneView();
  }
}
