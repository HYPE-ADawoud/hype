import 'package:flutter/material.dart';
import 'package:hype/app/common/themes/app_dims.dart';

import 'app_colors.dart';

abstract class AppTheme {

  static ThemeData get defaultTheme => fromColors(AppColors.current);

  static fromColors(AppColors colors, {bool isDark = false}) {
    return (isDark ? ThemeData.dark() : ThemeData.light()).copyWith(
      // colors
      scaffoldBackgroundColor: colors.background,
      primaryColor: colors.primary,
      cardColor: colors.neutral,
      disabledColor: colors.dimmed,
      hintColor: colors.dimmed,
      errorColor: colors.error,
      backgroundColor: colors.background,
      shadowColor: colors.text.withOpacity(0.05),
      highlightColor: colors.primaryLight,
      //> app bar
      appBarTheme: AppBarTheme(
        backgroundColor: colors.primary,
        centerTitle: true,
      ),
      //> dialog
      dialogTheme: DialogTheme(
        elevation: 5,
        backgroundColor: colors.background,//.withOpacity(.6),
        shape: _roundedRecShapeOuter
      ),

      //> button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(_roundedRecShape),
          backgroundColor: MaterialStateProperty.all(colors.transparent),
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5, horizontal: 15)),
          foregroundColor: MaterialStateProperty.all(colors.text),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: AppDims.fontSizeMediumX, fontWeight: FontWeight.bold)),
        )
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(_roundedRecShape),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5, horizontal: 15)),
            foregroundColor: MaterialStateProperty.all(colors.primary),
            side: MaterialStateProperty.all(BorderSide(color: colors.primary, width: 1)),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: AppDims.fontSizeMediumX,)),
          )
      ),

      //> elevated buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(AppDims.elevation),
        shape: MaterialStateProperty.all(_roundedRecShapeOuter),
        backgroundColor: MaterialStateProperty.all(colors.neutral),
        overlayColor: MaterialStateProperty.all(colors.primaryLight),
        padding: MaterialStateProperty.all(AppDims.buttonPadding),
        shadowColor: MaterialStateProperty.all(colors.text.withOpacity(0.5)),
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: AppDims.fontSizeMediumX, fontWeight: FontWeight.bold, color: colors.primary)),
      )),

      //> toggle buttons
      toggleButtonsTheme: ToggleButtonsThemeData(
        selectedColor: colors.primaryLight,
        borderRadius: BorderRadius.circular(AppDims.borderRadius),
      ),

      //> input
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: colors.neutral,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: _outlineInputBorder(colors.dimmedLight),
          enabledBorder: _outlineInputBorder(colors.dimmedLight),
          focusedBorder: _outlineInputBorder(colors.primary),
          errorBorder: _outlineInputBorder(colors.error),
          contentPadding: AppDims.contentPadding,
          errorStyle: TextStyle(color: colors.error, fontSize: 12)),

      //> card
      cardTheme: CardTheme(
        color: colors.neutral,
        elevation: AppDims.elevation,
        margin: const EdgeInsets.all(10),
        shadowColor: colors.text.withOpacity(0.5),
        shape: _roundedRecShape,
      ),
    );
  }

  static OutlinedBorder get _roundedRecShape => RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDims.borderRadius));

  static OutlinedBorder get _roundedRecShapeOuter => RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter));

  static OutlineInputBorder _outlineInputBorder(color){
    return OutlineInputBorder(borderRadius:   BorderRadius.all(Radius.circular(AppDims.borderRadius)), borderSide: BorderSide(color: color, width: 1,));
  }

  static BoxDecoration bottomNavBarDecoration(){
    return BoxDecoration(
        color: AppColors.current.neutral,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        boxShadow: [
          BoxShadow(color: AppColors.current.dimmed.withOpacity(0.15), blurRadius: 6, offset: const Offset(0, -6))
        ]);
  }

}
