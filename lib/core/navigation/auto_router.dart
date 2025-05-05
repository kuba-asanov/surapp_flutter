/* External dependencies */
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/core/navigation/auth_guard.dart';
import 'package:surapp_flutter/features/home_feature/data/models/post_model/post_model.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_questions/get_questions_bloc.dart';

import '../../features/ask_question_feature/presentation/view/send_question_page.dart';
import '../../features/authorization/sign_in_feature/presentation/view/sign_in_screen_route.dart';
import '../../features/authorization/sign_up_feature/presentation/pages/add_phone_page.dart';
import '../../features/authorization/sign_up_feature/presentation/pages/create_password_page.dart';
import '../../features/authorization/sign_up_feature/presentation/pages/sign_up_page.dart';
import '../../features/home_feature/presentation/answer_to_question/answer_to_question_page.dart';
import '../../features/home_feature/presentation/page/empty_first_page.dart';
import '../../features/home_feature/presentation/page/empty_second_page.dart';
import '../../features/home_feature/presentation/page/empty_third_page.dart';
import '../../features/home_feature/presentation/page/home_page.dart';
import '../../features/home_feature/presentation/page/navigation_page.dart';
import '../../features/home_feature/presentation/page/notification_page.dart';
import '../../features/home_feature/presentation/page/profile_page.dart';

/* Local dependencies */

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: NavigationRoute.page,
          initial: true,
          guards: [AuthGuard()],
          children: [
            AutoRoute(
              page: EmptyFirstRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page),
              ],
            ),
            AutoRoute(
              page: EmptySecondeRoute.page,
              children: [
                AutoRoute(page: NotificationRoute.page),
                AutoRoute(page: AnswerToQuestionRoute.page),
              ],
            ),
            AutoRoute(
              page: EmptyThirdRoute.page,
              children: [
                AutoRoute(page: ProfileRoute.page),
              ],
            ),
          ],
        ),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: CreatePasswordRoute.page),
        AutoRoute(page: AddPhoneRoute.page),
        AutoRoute(page: SendQuestionRoute.page),
      ];
}
