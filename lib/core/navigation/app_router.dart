// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:surapp_flutter/features/home_feature/presentation/view/home_screen_route.dart';
// import 'package:surapp_flutter/features/home_feature/presentation/view/navigation_page_route.dart';
// import 'package:surapp_flutter/features/sample_feature/sample_item_list_view_route.dart';
// import 'package:surapp_flutter/features/sign_in_feature/presentation/view/sign_in_screen_route.dart';

// class AppRouter {
//   AppRouter._();

//   static GoRouter? _router;

//   static GoRouter router({
//     // required InitialAuthStatus authStatus,
//     GlobalKey<NavigatorState>? navigatorKey,
//   }) {
//     return _router ??= GoRouter(
//       navigatorKey: navigatorKey,
//       initialLocation: SignInScreenRoute().path,
//       // initialLocation: authStatus == InitialAuthStatus.auth
//       //     ? MainScreenRoute().path
//       //     : OnboardingRoute().path,
//       routes: [
//         SampleItemListViewRoute(),
//         SignInScreenRoute(),
//         NavigationPageRoute(),
//         HomeScreenRoute(),
//       ],
//     );
//   }
// }

// enum InitialAuthStatus {
//   auth,
//   unauth,
// }
