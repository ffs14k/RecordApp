import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/text_style_consts.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/utils/widget_utils/on_devide.dart';

TextStyle textStyleFun(
  BuildContext context,
  TextType type,
  Color color,
) {
  final TextStyle style;
  switch (type) {
    case TextType.heading1:
      style = onDevice(
        context,
        desktop: (context) => TextStyles.desktopHeading1,
        tablet: (context) => TextStyles.tabletHeading1,
        mobile: (context) => TextStyles.mobileHeading1,
      );
    case TextType.heading2:
      style = onDevice(
        context,
        desktop: (context) => TextStyles.mobileHeading2,
        tablet: (context) => TextStyles.tabletHeading2,
        mobile: (context) => TextStyles.mobileHeading2,
      );
    case TextType.heading3:
      style = onDevice(
        context,
        desktop: (context) => TextStyles.mobileHeading3,
        tablet: (context) => TextStyles.tabletHeading3,
        mobile: (context) => TextStyles.mobileHeading3,
      );
    case TextType.body1:
      style = onDevice(
        context,
        desktop: (context) => TextStyles.mobileBody1,
        tablet: (context) => TextStyles.tabletBody1,
        mobile: (context) => TextStyles.mobileBody3,
      );
    case TextType.body2:
      style = onDevice(
        context,
        desktop: (context) => TextStyles.mobileBody2,
        tablet: (context) => TextStyles.tabletBody2,
        mobile: (context) => TextStyles.mobileBody3,
      );
    case TextType.body3:
      style = onDevice(
        context,
        desktop: (context) => TextStyles.mobileBody3,
        tablet: (context) => TextStyles.tabletBody3,
        mobile: (context) => TextStyles.mobileBody3,
      );
  }

  return style.copyWith(color: color);
}
