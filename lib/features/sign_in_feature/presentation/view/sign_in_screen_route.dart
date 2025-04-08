import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/sign_in_feature/presentation/view/sign_in_screen.dart';
import 'package:take_it/take_it.dart';

class SignInScreenRoute extends GoRoute {
  SignInScreenRoute()
      : super(
          path: "/sign-in",
          builder: (context, state) {
            return DiScopeBuilder(
              builder: (context, module) {
                return SignInScreen(
                  // bloc: module.get<SettingsBloc>(),
                );
              },
            );
          },
        );
}
