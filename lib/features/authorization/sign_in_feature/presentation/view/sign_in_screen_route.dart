import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
<<<<<<< Updated upstream:lib/features/sign_in_feature/presentation/view/sign_in_screen_route.dart
import 'package:surapp_flutter/features/sign_in_feature/di/sign_in_di_module.dart';
import 'package:surapp_flutter/features/sign_in_feature/presentation/bloc/sign_in_bloc.dart';
import 'package:surapp_flutter/features/sign_in_feature/presentation/view/sign_in_screen.dart';
=======
import 'package:surapp_flutter/features/authorization/sign_in_feature/di/sign_in_di_module.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/presentation/bloc/sign_in_bloc.dart';
// import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/presentation/view/sign_in_screen.dart';
>>>>>>> Stashed changes:lib/features/authorization/sign_in_feature/presentation/view/sign_in_screen_route.dart
import 'package:take_it/take_it.dart';

// class SignInScreenRoute extends GoRoute {
//   SignInScreenRoute()
//       : super(
//           path: "/sign-in",
//           builder: (context, state) {
//             return DiScopeBuilder(
//               builder: (context, module) {
//                 return SignInScreen(
//                   // bloc: module.get<SettingsBloc>(),
//                 );
//               },
//             );
//           },
//         );
// }

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({
    required this.onResult,
  });

  final Function(bool) onResult;

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      createModule: SignInDiModule.new,
      builder: (context, module) {
        return SignInScreen(
          bloc: module.get<SignInBloc>(),
          onResult: onResult,
        );
      },
    );
  }
}
