import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:take_it/take_it.dart';

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
    return DiScopeBuilder(builder: (context, module) {
      return AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          NotificationRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return buildBottomNavigationBar(
              context, tabsRouter, bottomNavigatorKey);
        },
      );
    });
  }
}

Widget buildBottomNavigationBar(BuildContext context, TabsRouter tabsRouter,
    GlobalKey<State<BottomNavigationBar>> navBarKey) {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    key: navBarKey,
    onTap: (index) {
      if (index == tabsRouter.activeIndex) {
        log("Index  ===${tabsRouter.activeIndex}");
        if (index == 0) {
          context.router.replaceAll([const HomeRoute()]);
        } else if (index == 1) {
          context.router.replaceAll([const NotificationRoute()]);
        } else if (index == 2) {
          context.router.replaceAll([const ProfileRoute()]);
        }
      } else {
        log("Index ${tabsRouter.activeIndex}");
        tabsRouter.setActiveIndex(index);
      }
    },
    // backgroundColor: Colors.blue,
    currentIndex: tabsRouter.activeIndex,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.white,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    selectedLabelStyle: const TextStyle(
      fontSize: 10,
      height: 1.33,
      fontWeight: FontWeight.w500,
      color: Colors.blue,
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
            tabsRouter.activeIndex == 0 ? Colors.blue : Colors.black,
            BlendMode.srcIn,
          ),
        ),

        // BlendMode.srcIn,

        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/images/navbar2icon.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            tabsRouter.activeIndex == 1 ? Colors.blue : Colors.black,
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
            tabsRouter.activeIndex == 2 ? Colors.blue : Colors.black,
            BlendMode.srcIn,
          ),
        ),
        label: '',
      ),
    ],
  );
}
