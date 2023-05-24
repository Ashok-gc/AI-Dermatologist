import 'dart:math';

import 'package:flutter/material.dart';

class Helper {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: _generateTintColor(color, 0.9),
      100: _generateTintColor(color, 0.8),
      200: _generateTintColor(color, 0.6),
      300: _generateTintColor(color, 0.4),
      400: _generateTintColor(color, 0.2),
      500: color,
      600: _generateShadeColor(color, 0.1),
      700: _generateShadeColor(color, 0.2),
      800: _generateShadeColor(color, 0.3),
      900: _generateShadeColor(color, 0.4),
    });
  }

  // Helper functions for above function
  static int _generateTintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color _generateTintColor(Color color, double factor) => Color.fromRGBO(
      _generateTintValue(color.red, factor),
      _generateTintValue(color.green, factor),
      _generateTintValue(color.blue, factor),
      1);

  static int _generateShadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color _generateShadeColor(Color color, double factor) =>
      Color.fromRGBO(
          _generateShadeValue(color.red, factor),
          _generateShadeValue(color.green, factor),
          _generateShadeValue(color.blue, factor),
          1);
}
