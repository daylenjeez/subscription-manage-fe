import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color primaryColor = Color(0xFF1E2936); //主色
  static const Color hintTextColor = Color(0xFF929CA5); //提示色

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    hintColor: hintTextColor,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    hintColor: hintTextColor,
  );
}
