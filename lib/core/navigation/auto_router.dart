/* External dependencies */
import 'package:auto_route/auto_route.dart';

import '../../features/home_feature/presentation/page/empty_first_page.dart';
import '../../features/home_feature/presentation/page/empty_second_page.dart';
import '../../features/home_feature/presentation/page/empty_third_page.dart';
import '../../features/home_feature/presentation/page/home_page.dart';
import '../../features/home_feature/presentation/page/navigation_page.dart';
import '../../features/home_feature/presentation/page/notification_page.dart';
import '../../features/home_feature/presentation/page/profile_page.dart';
import '../../features/sign_in_feature/presentation/view/sign_in_screen_route.dart';

/* Local dependencies */

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignInRoute.page,
          initial: true,
        ),
        AutoRoute(
          // initial: true,
          page: NavigationRoute.page,
          children: [
            AutoRoute(
              page: EmptyFirstRoute.page,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: EmptySecondeRoute.page,
              children: [
                AutoRoute(
                  page: NotificationRoute.page,
                  // initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: EmptyThirdRoute.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  // initial: true,
                ),
              ],
            ),
          ],
        ),
        // AutoRoute(page: ProfileEditRoute.page),
      ];
}
