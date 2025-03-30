import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:record_app/utils/widget_utils/screen_type.dart';
import 'package:record_app/utils/widget_utils/widget_context.dart';

WidgetContext widgetContext(
  BuildContext context,
) {
  final size = MediaQuery.of(context).size;
  final deviceType = _getScreenType(context);
  return WidgetContext(
    context,
    sh: size.height,
    sw: size.width,
    deviceType: deviceType,
  );
}

ScreenType _getScreenType(
  BuildContext context,
) {
  switch (context.breakpoint) {
    case LayoutBreakpoint.xs:
    case LayoutBreakpoint.sm:
    case LayoutBreakpoint.md:
      return ScreenType.mobile;
    case LayoutBreakpoint.lg:
      return ScreenType.tablet;
    case LayoutBreakpoint.xl:
      return ScreenType.tablet;
  }
}
