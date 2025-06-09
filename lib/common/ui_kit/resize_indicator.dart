// Flutter imports:
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
// Project imports:

class ResizeIndicator extends StatelessWidget {
  const ResizeIndicator({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const SizedBox(height: 4),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColorScheme.lightGray,
                borderRadius: BorderRadius.circular(5),
              ),
              width: 36,
              height: 5,
            ),
          ),
          const SizedBox(height: 5),
        ],
      );
}
