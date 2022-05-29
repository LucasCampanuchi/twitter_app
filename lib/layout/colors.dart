import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color.fromRGBO(67, 80, 94, 1);
  static Color second = const Color.fromRGBO(88, 104, 121, 1);

  static Color bluePattern = const Color.fromRGBO(76, 158, 235, 1);
  static Color textPattern = const Color.fromRGBO(20, 22, 25, 1);

  static const MaterialColor mcgpalette0 = MaterialColor(
    _mcgpalette0PrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(_mcgpalette0PrimaryValue),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );
  static const int _mcgpalette0PrimaryValue = 0xFFFFFFFF;

  static const MaterialColor mcgpalette0Accent = MaterialColor(
    _mcgpalette0AccentValue,
    <int, Color>{
      100: Color(0xFFFFFFFF),
      200: Color(_mcgpalette0AccentValue),
      400: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
    },
  );
  static const int _mcgpalette0AccentValue = 0xFFFFFFFF;
}
