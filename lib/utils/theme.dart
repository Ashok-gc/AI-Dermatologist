import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'constants/app_components.dart';

class AppThemeData {
  static final ThemeData appThemeData = ThemeData(
      // Set default font name
      fontFamily: 'SF Pro Display',
      primarySwatch: AppColors.primaryMaterialColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.shadeColor2,
      // Setting all default textTheme based on design
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 36,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            fontSize: 26,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            fontSize: 20,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold),
        labelLarge: TextStyle(
            fontSize: 18,
            color: AppColors.white,
            fontWeight: FontWeight.w600),
        bodyMedium: TextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            fontSize: 14,
            color: AppColors.white,
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
            color: AppColors.white,
            fontWeight: FontWeight.bold),
      ),
      popupMenuTheme: const PopupMenuThemeData(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14))),
          textStyle: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500)));
}
