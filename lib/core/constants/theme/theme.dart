import 'package:flutter/material.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/core/constants/theme/custom_theme/formflied_theme.dart';
import 'package:taskflow/core/constants/theme/custom_theme/text_theme.dart';
import 'package:taskflow/core/constants/theme/custom_theme/appbar_theme.dart';
import 'package:taskflow/core/constants/theme/custom_theme/elevated_button_theme.dart';
import 'package:taskflow/core/constants/theme/custom_theme/outline_button_theme.dart';



class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightScaffold,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    primaryColorDark: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryLight,
    inputDecorationTheme: AppInputDecoration.lightInputDecorationTheme,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: TaskAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppElevetedButtonTheme.lightElevetedButtonTheme,
    outlinedButtonTheme: AppOutLineBottomTheme.lightOutlineBottomTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkScaffold,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    primaryColorDark: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryLight,
    inputDecorationTheme: AppInputDecoration.darkInputDecorationTheme,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: TaskAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppElevetedButtonTheme.darkElevetedButtonTheme,
    outlinedButtonTheme: AppOutLineBottomTheme.darkOutlineBottomTheme,
  );
  
}