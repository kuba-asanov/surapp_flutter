import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/sample_feature/sample_item_list_view_route.dart';

class AppRouter {
  AppRouter._();

  static GoRouter? _router;

  static GoRouter router({
    // required InitialAuthStatus authStatus,
    GlobalKey<NavigatorState>? navigatorKey,
  }) {
    return _router ??= GoRouter(
      navigatorKey: navigatorKey,
      // initialLocation: authStatus == InitialAuthStatus.auth
      //     ? MainScreenRoute().path
      //     : OnboardingRoute().path,
      routes: [
        SampleItemListViewRoute(),
      ],
    );
  }
}

enum InitialAuthStatus {
  auth,
  unauth,
}
