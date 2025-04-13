import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton.primary({
    super.key,
    required this.child,
    required this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
  }) : _style = _Style.primary;

  const AppButton.secondary({
    super.key,
    required this.child,
    required this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
  }) : _style = _Style.secondary;

  const AppButton.transparent({
    super.key,
    required this.child,
    required this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
  }) : _style = _Style.transparent;

  final VoidCallback onPressed;
  final Widget child;
  final bool isEnabled;
  final bool isLoading;
  final _Style _style;

  ButtonStyle get _primaryStyle => ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColorScheme.tertiary,
        backgroundColor: AppColorScheme.primary,
        foregroundColor: AppColorScheme.onPrimary,
        disabledForegroundColor: AppColorScheme.onTertiary,
      );

  ButtonStyle get _secondaryStyle => ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColorScheme.tertiary,
        backgroundColor: AppColorScheme.secondary,
        foregroundColor: AppColorScheme.onSecondary,
        elevation: 0,
        disabledForegroundColor: AppColorScheme.onTertiary,
      );

  ButtonStyle get _transparentStyle => ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: AppColorScheme.onSecondary,
        disabledForegroundColor: AppColorScheme.onTertiary,
      );

  void _onPressed() {
    if (!isLoading) {
      onPressed.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const AppTextStyles.button1(),
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.zero,
        splashFactory: InkSparkle.splashFactory,
      ).merge(
        switch (_style) {
          _Style.primary => _primaryStyle,
          _Style.secondary => _secondaryStyle,
          _Style.transparent => _transparentStyle,
        },
      ),
      onPressed: isEnabled ? _onPressed : null,
      child: isLoading
          ? CircularProgressIndicator(
              color: switch (_style) {
                _Style.primary => AppColorScheme.onPrimary,
                _Style.secondary => AppColorScheme.onSecondary,
                _Style.transparent => AppColorScheme.onSecondary,
              },
            )
          : child,
    );
  }
}

enum _Style {
  primary,
  secondary,
  transparent,
}
