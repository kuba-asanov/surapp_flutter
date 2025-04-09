import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EmptyThirdPage extends StatelessWidget {
  const EmptyThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
