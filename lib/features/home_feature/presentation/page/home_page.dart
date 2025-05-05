import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_posts_usecase.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_posts/get_posts_bloc.dart';
import 'package:take_it/take_it.dart';

import '../view/home_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      builder: (context, module) {
        return HomeView(
          bloc: module.get<GetPostsBloc>()
            ..add(
              GetPostsEvent(
                params: GetPostsParams(PostType.allAnswered),
              ),
            ),
        );
      },
    );
  }
}
