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
    required this.dimmedLight,
    required this.accent,
    required this.accentLight,
    required this.error,
    required this.background,
    required this.neutral,
    required this.success,
    required this.transparent,
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
  Color dimmedLight;
  Color success;
  Color transparent;
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
    success: const Color.fromRGBO(0, 128, 0, 1),
    neutral: Colors.white,
    transparent: Colors.transparent);
