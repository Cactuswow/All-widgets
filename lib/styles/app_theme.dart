import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getDarkTheme() {
    return ThemeData(brightness: Brightness.dark);
  }

  static ThemeData getLightTheme() {
    return ThemeData(brightness: Brightness.light);
  }
}
