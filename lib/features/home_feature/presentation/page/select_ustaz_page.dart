import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/select_ustaz_view.dart';

@RoutePage()
class SelectUstazPage extends StatelessWidget {
  static const String routeName = '/Profile_page';
  const SelectUstazPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectUstazView();
  }
}
