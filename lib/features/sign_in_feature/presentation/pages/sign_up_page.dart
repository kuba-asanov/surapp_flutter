import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/sign_up_view.dart';


@RoutePage()
class SignUpPage extends StatelessWidget {
  static const String routeName = '/Profile_page';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }
}
