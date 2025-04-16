import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'create_password_view.dart';


@RoutePage()
class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreatePasswordView();
  }
}
