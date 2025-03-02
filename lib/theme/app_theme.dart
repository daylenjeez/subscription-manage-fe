import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  // 亮色主题
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'PingFang SC',
      textTheme: const TextTheme(
        labelLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      hintColor: AppColors.hintTextColor,
      dividerColor: AppColors.dividerColor,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: AppColors.textPrimary,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          color: AppColors.hintTextColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFFDCDCDC),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primaryButtonColor,
        ),
      ),
    );
  }

  // 暗色主题
  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
    );
  }
}
