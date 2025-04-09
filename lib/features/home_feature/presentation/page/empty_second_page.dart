import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EmptySecondePage extends StatelessWidget {
  const EmptySecondePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
