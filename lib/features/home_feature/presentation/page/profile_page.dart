import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_posts_usecase.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_user/user_bloc.dart';
import 'package:surapp_flutter/features/home_feature/presentation/view/not_auth_profile_view.dart';
import 'package:take_it/take_it.dart';

import '../view/profile_view.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      builder: (context, module) {
        final bloc = module.get<UserBloc>();

        return BlocBuilder<UserBloc, UserState>(
          bloc: bloc,
          builder: (context, state) {
            final user = state.user;
            if (user == null) {
              return NotAuthProfileView();
            }
            return ProfileView(
              user: user,
              onLogout:() => bloc.add(LogoutUserEvent()),
              postsUscase: module.get<GetPostsUsecase>(),
            );
          },
        );
      },
    );
  }
}
