import 'package:flutter/material.dart';

extension ColorShemeDsExtensions on ColorScheme {
  Color get shadow1 => shadow.withAlpha(146);
  Color get shadow2 => shadow.withAlpha(97);
  Color get shadow3 => shadow.withAlpha(60);
  Color get shadow4 => shadow.withAlpha(20);
  Color get inactive => const Color.fromARGB(255, 137, 134, 134);
  Color get textLink => const Color.fromARGB(255, 40, 77, 129);
}
