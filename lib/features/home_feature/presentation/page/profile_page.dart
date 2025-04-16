import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_user/get_user_bloc.dart';
import 'package:take_it/take_it.dart';

import '../view/profile_view.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  static const String routeName = '/Profile_page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(builder: (context, module) {
      return ProfileView(
        bloc: module.get<GetUserBloc>()..add(GetUserEvent.started()),
      );
    });
  }
}
