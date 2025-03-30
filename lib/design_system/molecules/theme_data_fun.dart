import 'package:flutter/material.dart';

ThemeData themeDataFun() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 7, 27, 82),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      onPrimaryContainer: Color.fromARGB(255, 213, 213, 213),
      secondary: Color.fromARGB(255, 249, 246, 246),
      onSecondary: Color.fromARGB(255, 0, 0, 0),
      error: Color.fromARGB(255, 193, 0, 16),
      onError: Color.fromARGB(255, 255, 255, 255),
      surface: Color.fromARGB(255, 239, 240, 251),
      onSurface: Color.fromARGB(255, 0, 0, 0),
      shadow: Color.fromARGB(187, 0, 0, 0),
    ),
  );
}
