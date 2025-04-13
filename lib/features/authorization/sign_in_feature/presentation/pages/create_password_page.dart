import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/create_password_view.dart';


@RoutePage()
class CreatePasswordPage extends StatelessWidget {
  static const String routeName = '/Profile_page';
  const CreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreatePasswordView();
  }
}
