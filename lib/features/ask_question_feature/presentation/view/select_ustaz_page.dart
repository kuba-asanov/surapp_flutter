import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'select_ustaz_view.dart';

@RoutePage()
class SelectUstazPage extends StatelessWidget {
  const SelectUstazPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return const SelectUstazView();
      }
    );
  }
}
