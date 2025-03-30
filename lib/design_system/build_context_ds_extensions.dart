import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/design_system/molecules/spacing_fun.dart';
import 'package:record_app/design_system/molecules/text_style_fun.dart';

extension BuildContextDsExtensions on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextStyle textStyle(TextType style, Color color) {
    return textStyleFun(this, style, color);
  }

  double spacing(SizeType size, {double multiplier = 1}) {
    return spacingFun(this, size, multiplier: multiplier);
  }
}