import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './colors.dart';

class AppTextStyles {
  // Display styles - Using Poppins for headlines
  static TextStyle displayLarge({
    Color color = AppColors.mainTextColor,
    double fontSize = 30,
    FontWeight fontWeight = FontWeight.w700,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: -0.5,
      height: 1.2,
    );
  }

  static TextStyle displayMedium({
    Color color = AppColors.mainTextColor,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.w600,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: -0.3,
      height: 1.3,
    );
  }

  // Body text styles
  static TextStyle bodyLarge({
    Color color = AppColors.mainTextColor,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
    String fontFamily = 'Urbanist',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: 0.15,
      height: 1.5,
    );
  }

  static TextStyle bodyMedium({
    Color color = AppColors.secondaryTextColor,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: 0.25,
      height: 1.5,
    );
  }

  static TextStyle bodySmall({
    Color color = AppColors.secondaryTextColor,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: 0.4,
      height: 1.5,
    );
  }

  // Button and label styles
  static TextStyle labelLarge({
    Color color = AppColors.primaryColor,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w600,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: 0.4,
      height: 1.4,
    );
  }

  static TextStyle labelMedium({
    Color color = AppColors.primaryColor,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w500,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: 0.5,
      height: 1.4,
    );
  }
}
