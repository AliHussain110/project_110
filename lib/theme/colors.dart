import 'package:flutter/material.dart';

/// A collection of colors used throughout the application.
/// This class provides a centralized way to manage the app's color scheme.
class AppColors {
  // Primary Brand Colors
  static const Color primaryColor = Color(0xFF6366F1); // Modern indigo
  static const Color secondaryColor = Color(0xFF14B8A6); // Fresh teal
  static const Color accentColor = Color(0xFFF43F5E); // Vibrant rose

  // Background Colors
  static const Color backgroundColor = Color(
    0xFFF8FAFC,
  ); // Light gray background
  static const Color surfaceColor = Color(0xFFFFFFFF); // Pure white surface
  static const Color cardColor = Color(0xFFF1F5F9); // Subtle card background
  static const Color bottomNavBackgroundColor = Color(
    0xFFE5E4E2,
  ); // Botton Nav background

  // Text Colors
  static const Color mainTextColor = Color(
    0xFF1E293B,
  ); // Rich slate for primary text
  static const Color secondaryTextColor = Color(
    0xFF64748B,
  ); // Balanced gray for secondary text
  static const Color lightTextColor = Color(
    0xFF94A3B8,
  ); // Soft gray for tertiary text

  // Interactive Elements
  static const Color buttonColor = Color(
    0xFF6366F1,
  ); // Primary indigo for buttons
  static const Color buttonHoverColor = Color(
    0xFF4F46E5,
  ); // Deeper indigo for hover
  static const Color iconColor = Color(0xFF475569); // Slate for icons
  static const Color linkColor = Color(0xFF3B82F6); // Bright blue for links

  // Status Colors
  static const Color successColor = Color(0xFF10B981); // Emerald for success
  static const Color errorColor = Color(0xFFEF4444); // Red for errors
  static const Color warningColor = Color(0xFFF59E0B); // Amber for warnings
  static const Color infoColor = Color(0xFF0EA5E9); // Sky blue for info

  // Form Elements
  static const Color inputFeildColor = Color(
    0xFFE2E8F0,
  ); // Light slate for borders
  static const Color inputFeildColor2 = Color(
    0xFFF8FAFC,
  ); // Lightest slate for backgrounds

  // Prevent instantiation
  AppColors._();
}
