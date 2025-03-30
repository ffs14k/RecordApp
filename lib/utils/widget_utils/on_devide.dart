import 'package:flutter/material.dart';

import 'package:record_app/utils/closures.dart';
import 'package:record_app/utils/widget_utils/screen_type.dart';
import 'package:record_app/utils/widget_utils/widget_context.dart';
import 'package:record_app/utils/widget_utils/widget_utils.dart';

T onDevice<T>(
  BuildContext context, {
  required IOFun<WidgetContext, T> desktop,
  required IOFun<WidgetContext, T> tablet,
  required IOFun<WidgetContext, T> mobile,
}) {
  final wContext = widgetContext(context);
  switch (wContext.deviceType) {
    case ScreenType.mobile:
      return mobile(wContext);
    case ScreenType.tablet:
      return tablet(wContext);
    case ScreenType.desktop:
      return desktop(wContext);
  }
}
