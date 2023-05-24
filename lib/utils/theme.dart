import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'constants/app_components.dart';

/// This file contain theme data of the app and initial custom default widget
/// configurations
class AppThemeData {
  static final ThemeData appThemeData = ThemeData(
      // Set default font name
      fontFamily: 'SF Pro Display',
      primarySwatch: AppColors.primaryMaterialColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.shadeColor2,
      // Setting all default textTheme based on design
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 36,
            color: AppColors.darkColor,
            fontWeight: FontWeight.bold),
        headline2: TextStyle(
            fontSize: 26,
            color: AppColors.darkColor,
            fontWeight: FontWeight.bold),
        headline3: TextStyle(
            fontSize: 24,
            color: AppColors.darkColor,
            fontWeight: FontWeight.bold),
        headline4: TextStyle(
            fontSize: 20,
            color: AppColors.darkColor,
            fontWeight: FontWeight.bold),
        button: TextStyle(
            fontSize: 18,
            color: AppColors.darkColor,
            fontWeight: FontWeight.w600),
        bodyText2: TextStyle(
            fontSize: 16,
            color: AppColors.darkColor,
            fontWeight: FontWeight.w400),
        caption: TextStyle(
            fontSize: 14,
            color: AppColors.darkColor,
            fontWeight: FontWeight.w400),
      ),
      // Set default TextField theme design
      inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: AppColors.bodyTextColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(AppComponents.defaultBorderRadius),
              borderSide:
                  BorderSide(color: AppColors.lineShapeColor, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(AppComponents.defaultBorderRadius),
              borderSide:
                  BorderSide(color: AppColors.lineShapeColor, width: 1))),
      // Set default appbar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 24,
            fontFamily: 'SF Pro Display',
            color: AppColors.darkColor,
            fontWeight: FontWeight.bold),
      ),
      popupMenuTheme: const PopupMenuThemeData(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14))),
          textStyle: TextStyle(
              color: AppColors.darkColor,
              fontSize: 14,
              fontWeight: FontWeight.w500)));
}
