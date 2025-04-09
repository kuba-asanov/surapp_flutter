import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/profile_view.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  static const String routeName = '/Profile_page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // RepositoryProvider<IProfileRepository>(
        //   create: (context) =>
        //       ProfileRepository(networkProvider: context.read<IAppNetworkProvider>()),
        //   child: MultiBlocProvider(
        //     providers: [

        //     ],
        //     child:
        const ProfileView();
    //   ),
    // );
  }
}
