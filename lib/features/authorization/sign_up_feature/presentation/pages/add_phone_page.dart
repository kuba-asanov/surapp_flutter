import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/features/authorization/sign_up_feature/presentation/bloc/sign_up/sign_up_bloc.dart';
import 'package:take_it/take_it.dart';

import '../../di/sign_up_di_module.dart';
import '../view/add_phone_view.dart';

@RoutePage()
class AddPhonePage extends StatelessWidget {
  const AddPhonePage({
    super.key,
    required this.username,
    required this.password,
  });
  final String username;
  final String password;

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      createModule: SignUpDiModule.new,
      builder: (context, module) {
        return AddPhoneView(
          username: username,
          password: password,
          bloc: module.get<SignUpBloc>(),
        );
      },
    );
  }
}
