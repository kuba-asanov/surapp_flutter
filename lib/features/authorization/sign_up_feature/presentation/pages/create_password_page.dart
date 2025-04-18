import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/create_password_view.dart';

@RoutePage()
class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return CreatePasswordView(username: username);
  }
}
