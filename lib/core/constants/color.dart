import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // ======================================================
  // Common Colors (Light & Dark উভয় Theme-এ ব্যবহার হবে)
  // ======================================================

  static const Color primary = Color(0xFF2563EB);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1D4ED8);

static const Color secondary = Color(0xFF8B5CF6);
static const Color secondaryLight = Color(0xFFA78BFA);
static const Color secondaryDark = Color(0xFF6D28D9);

  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF0EA5E9);

  static const Color highPriority = Color(0xFFEF4444);
  static const Color mediumPriority = Color(0xFFF59E0B);
  static const Color lowPriority = Color(0xFF22C55E);

  static const Color completed = Color(0xFF22C55E);
  static const Color pending = Color(0xFFF59E0B);

  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  
  
  // ======================================================
  // Light Theme Colors
  // ======================================================

  static const Color lightBackground = Color(0xFFF8FAFC);
  static const Color lightScaffold = Color(0xFFF8FAFC);
  static const Color lightCard = Colors.white;

  static const Color lightTextPrimary = Color(0xFF111827);
  static const Color lightTextSecondary = Color(0xFF6B7280);
  static const Color lightTextHint = Color(0xFF9CA3AF);

  static const Color lightBorder = Color(0xFFE5E7EB);
  static const Color lightDivider = Color(0xFFF1F5F9);

  static const Color lightShadow = Color(0x14000000);

  // ======================================================
  // Dark Theme Colors
  // ======================================================

  static const Color darkBackground = Color(0xFF0F172A);
  static const Color darkScaffold = Color(0xFF0F172A);
  static const Color darkCard = Color(0xFF1E293B);

  static const Color darkTextPrimary = Colors.white;
  static const Color darkTextSecondary = Color(0xFFCBD5E1);
  static const Color darkTextHint = Color(0xFF94A3B8);

  static const Color darkBorder = Color(0xFF334155);
  static const Color darkDivider = Color(0xFF475569);

  static const Color darkShadow = Color(0x33000000);
}