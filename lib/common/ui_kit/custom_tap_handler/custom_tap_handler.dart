import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTapHandler extends StatelessWidget {
  const CustomTapHandler({
    super.key,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.highlightColor,
    this.inkBorderRadius,
    this.padding = EdgeInsets.zero,
    required this.child,
  });

  final void Function()? onTap;
  final void Function()? onDoubleTap;
  final void Function()? onLongPress;
  final void Function(TapDownDetails)? onTapDown;
  final void Function(TapUpDetails)? onTapUp;
  final void Function()? onTapCancel;
  final Color? highlightColor;
  final BorderRadius? inkBorderRadius;
  final EdgeInsets padding;

  final Widget child;

  BorderRadius get _defaultBorderRadius => BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: switch (defaultTargetPlatform) {
        TargetPlatform.android => InkWell(
            splashColor: highlightColor,
            highlightColor: highlightColor,
            onTap: onTap,
            onDoubleTap: onDoubleTap,
            onLongPress: onLongPress,
            onTapDown: onTapDown,
            onTapUp: onTapUp,
            onTapCancel: onTapCancel,
            borderRadius: inkBorderRadius ?? _defaultBorderRadius,
            child: Padding(padding: padding, child: child),
          ),
        TargetPlatform.iOS => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            onDoubleTap: onDoubleTap,
            onLongPress: onLongPress,
            onTapDown: onTapDown,
            onTapUp: onTapUp,
            onTapCancel: onTapCancel,
            child: Padding(padding: padding, child: child),
          ),
        _ => throw UnimplementedError(
            'CustomTapHandler is not implemented for $defaultTargetPlatform',
          ),
      },
    );
  }
}
