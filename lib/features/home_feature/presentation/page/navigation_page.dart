import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_user/user_bloc.dart';
import 'package:take_it/take_it.dart';

import '../../../../common/ui_kit/app_color_scheme.dart';
import '../../../../core/navigation/auto_router.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});
  static const String routeName = 'navigation-page';

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final bottomNavigatorKey = GlobalKey<State<BottomNavigationBar>>();
  @override
  void initState() {
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      builder: (context, module) {
        final bloc = module.get<UserBloc>();
        return BlocBuilder<UserBloc, UserState>(
          bloc: bloc,
          builder: (context, state) {
            final isUstaz = state.user?.role == 1;
            return AutoTabsScaffold(
              routes: [
                HomeRoute(),
                if (isUstaz) NotificationRoute(),
                ProfileRoute(),
              ],
              bottomNavigationBuilder: (_, tabsRouter) {
                return buildBottomNavigationBar(
                    context, tabsRouter, bottomNavigatorKey, isUstaz);
              },
            );
          },
        );
      },
    );
  }
}

Widget buildBottomNavigationBar(BuildContext context, TabsRouter tabsRouter,
    GlobalKey<State<BottomNavigationBar>> navBarKey, bool isUstaz) {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    key: navBarKey,
    onTap: (index) {
      // if (index == tabsRouter.activeIndex) {
      //   log("Index  ===${tabsRouter.activeIndex}");
      //   if (index == 0) {
      //     context.router.replaceAll([const HomeRoute()]);
      //   } else if (index == 1) {
      //     context.router.replaceAll([const NotificationRoute()]);
      //   } else if (index == 2) {
      //     context.router.replaceAll([const ProfileRoute()]);
      //   }
      // } else {
      log("Index ${tabsRouter.activeIndex}");
      tabsRouter.setActiveIndex(index);
      // }
    },
    // backgroundColor: AppColorScheme.primary,
    currentIndex: tabsRouter.activeIndex,
    selectedItemColor: AppColorScheme.primary,
    unselectedItemColor: Colors.white,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    selectedLabelStyle: TextStyle(
      fontSize: 10,
      height: 1.33,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.primary,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 10,
      height: 1.33,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    items: [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/images/navbar1icon.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            tabsRouter.activeIndex == 0 ? AppColorScheme.primary : Colors.black,
            BlendMode.srcIn,
          ),
        ),

        // BlendMode.srcIn,

        label: '',
      ),
      if (isUstaz)
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/navbar2icon.svg',
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              tabsRouter.activeIndex == (isUstaz ? 1 : 3)
                  ? AppColorScheme.primary
                  : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/images/navbar3icon.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            tabsRouter.activeIndex == (isUstaz ? 2 : 1)
                ? AppColorScheme.primary
                : Colors.black,
            BlendMode.srcIn,
          ),
        ),
        label: '',
      ),
    ],
  );
}
