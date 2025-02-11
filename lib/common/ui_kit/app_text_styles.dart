import 'package:flutter/material.dart';

class AppTextStyles extends TextStyle {
  const AppTextStyles.heading2([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 32.0,
          lineHeight: 48.0,
        );

  const AppTextStyles.heading3([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 24.0,
          lineHeight: 36.0,
        );

  const AppTextStyles.subtitle1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
          lineHeight: 28.0,
        );

  const AppTextStyles.subtitle3([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
          lineHeight: 19.6,
        );

  const AppTextStyles.label1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          lineHeight: 24.0,
        );

  const AppTextStyles.label3([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 10,
          lineHeight: 12.0,
        );

  const AppTextStyles.button1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          lineHeight: 24.0,
        );

  const AppTextStyles.textRegular1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          lineHeight: 24,
        );

  const AppTextStyles.textRegular3([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          lineHeight: 15.6,
        );

  const AppTextStyles.textMedium1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          lineHeight: 24,
        );

  const AppTextStyles.textMedium3([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          lineHeight: 15.6,
        );

  const AppTextStyles.semiBold1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          lineHeight: 24,
        );

  const AppTextStyles.semiBold2([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          lineHeight: 19.6,
        );

  const AppTextStyles.caption1([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          lineHeight: 15.6,
        );

  const AppTextStyles.test([Color? color])
      : this._(
          color: color,
          fontWeight: FontWeight.w900,
          fontSize: 6,
          lineHeight: 15.6,
        );

  const AppTextStyles._({
    super.color,
    required FontWeight super.fontWeight,
    required double super.fontSize,
    required double lineHeight,
    super.letterSpacing,
  }) : super(
          height: lineHeight / fontSize,
          fontFamily: defaultFontFamily,
          leadingDistribution: TextLeadingDistribution.even,
        );

  static const defaultFontFamily = 'Inter';
}
