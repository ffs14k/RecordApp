import 'package:flutter/cupertino.dart';

class WidgetKey {
  WidgetKey._();

  static GlobalKey nameInput = GlobalKey(debugLabel: "nameInput");
  static GlobalKey phoneInput = GlobalKey(debugLabel: "phoneInput");
}
