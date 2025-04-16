import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
// import 'package:go_router/go_router.dart';
import 'package:take_it/take_it.dart';

import '../../di/sign_in_di_module.dart';
import '../bloc/sign_in_bloc.dart';
import 'sign_in_screen.dart';

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
    super.key,
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
