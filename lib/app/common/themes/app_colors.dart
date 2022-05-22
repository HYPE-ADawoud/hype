import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _current;

  static AppColors get current => _current ?? _defaultLightColors;

  static set current(value) => _current = value;

  AppColors({
    required this.primary,
    required this.secondary,
    required this.primaryLight,
    required this.text,
    required this.dimmed,
    required this.dimmedX,
    required this.dimmedXX,
    required this.dimmedXXX,
    required this.dimmedXXXX,
    required this.dimmedXXXXX,
    required this.dimmedLight,
    required this.accent,
    required this.accentLight,
    required this.error,
    required this.background,
    required this.neutral,
    required this.success,
    required this.transparent,
    required this.green,
    required this.blue,
    required this.yellow,
    required this.brown,
    required this.peach,
    required this.orange,
  });

  Color primary;
  Color secondary;
  Color primaryLight;
  Color accent;
  Color accentLight;
  Color error;
  Color text;
  Color neutral;
  Color background;
  Color dimmed;
  Color dimmedX;
  Color dimmedXX;
  Color dimmedXXX;
  Color dimmedXXXX;
  Color dimmedXXXXX;
  Color dimmedLight;
  Color success;
  Color transparent;
  Color green;
  Color blue;
  Color yellow;
  Color brown;
  Color peach;
  Color orange;
}

var _defaultLightColors = AppColors(
  background: const Color(0xFFCE2028),
  primary: const Color(0xFFCE2028),
  primaryLight: const Color(0xffF44336),
  secondary: const Color(0xffCB7FE6),
  accent: const Color(0xffF47321),
  accentLight: const Color(0xfff79355),
  error: const Color(0xffFFFFFF),
  text: const Color(0xFFFFFFFF),

  /// gray colors.
  dimmedLight: Colors.grey.shade300,
  dimmed: Colors.grey.shade400,
  dimmedX: Colors.grey.shade600,
  dimmedXX: Colors.grey.shade700,
  dimmedXXX: const Color(0xff1C0D33),
  dimmedXXXX:const Color(0xff494949),
  dimmedXXXXX:const Color(0xff000000),
  success: const Color.fromRGBO(0, 128, 0, 1),
  neutral: Colors.white,
  transparent: Colors.transparent,
  green: const Color(0xff7CFA4D),
  blue: const Color(0xff4A70BA),
  yellow: Colors.yellow,
  brown: Colors.brown,
  peach: const Color(0xffDEBAB1),
  orange: const Color(0xffEF9D39),
);
