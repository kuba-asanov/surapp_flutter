import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EmptyFirstPage extends StatelessWidget {
  const EmptyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
