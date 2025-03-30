import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/atoms/spacings.dart';
import 'package:record_app/utils/widget_utils/on_devide.dart';

double spacingFun(
  BuildContext context,
  SizeType type, {
  double multiplier = 1,
}) {
  switch (type) {
    case SizeType.xxl:
      return onDevice(
        context,
        desktop: (context) => Spacings.desktopXXl * multiplier,
        tablet: (context) => Spacings.tabletXXl * multiplier,
        mobile: (context) => Spacings.mobileXXl * multiplier,
      );
    case SizeType.xl:
      return onDevice(
        context,
        desktop: (context) => Spacings.desktopXl * multiplier,
        tablet: (context) => Spacings.tabletXl * multiplier,
        mobile: (context) => Spacings.mobileXl * multiplier,
      );
    case SizeType.l:
      return onDevice(
        context,
        desktop: (context) => Spacings.desktopL * multiplier,
        tablet: (context) => Spacings.tabletL * multiplier,
        mobile: (context) => Spacings.mobileL * multiplier,
      );
    case SizeType.m:
      return onDevice(
        context,
        desktop: (context) => Spacings.desktopM * multiplier,
        tablet: (context) => Spacings.tabletM * multiplier,
        mobile: (context) => Spacings.mobileM * multiplier,
      );

    case SizeType.s:
      return onDevice(
        context,
        desktop: (context) => Spacings.desktopS * multiplier,
        tablet: (context) => Spacings.tabletS * multiplier,
        mobile: (context) => Spacings.mobileS * multiplier,
      );
    case SizeType.xs:
      return onDevice(
        context,
        desktop: (context) => Spacings.desktopXs * multiplier,
        tablet: (context) => Spacings.tabletXs * multiplier,
        mobile: (context) => Spacings.mobileXs * multiplier,
      );
  }
}
