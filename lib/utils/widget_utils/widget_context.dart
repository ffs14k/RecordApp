import 'package:flutter/material.dart';
import 'package:record_app/utils/widget_utils/screen_type.dart';

class WidgetContext {
  final BuildContext context;
  // screen height
  final double sh;
  // screen width
  final double sw;
  final ScreenType deviceType;

  const WidgetContext(
    this.context, {
    required this.sh,
    required this.sw,
    required this.deviceType,
  });
}
