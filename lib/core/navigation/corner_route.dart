import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CornerRoute extends GoRoute {
  CornerRoute()
      : super(
          path: '/corner',
          builder: (context, state) {
            return state.extra as Widget;
          },
        );
}
