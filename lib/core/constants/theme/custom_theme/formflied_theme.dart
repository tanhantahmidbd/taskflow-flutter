import 'package:flutter/material.dart';
import 'package:taskflow/core/constants/color.dart';

class AppInputDecoration {
  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
    filled: true,
    fillColor: AppColors.lightCard,

    contentPadding: const EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 16,
    ),

    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.primary,

    hintStyle: TextStyle(
      color: Colors.grey.shade500,
      fontSize: 15,
      fontFamily: "Poppins",
    ),

    labelStyle: const TextStyle(
      color: Colors.black87,
      fontSize: 15,
      fontFamily: "Poppins",
    ),

    floatingLabelStyle: TextStyle(
      color: AppColors.primary,
      fontSize: 16,
      fontFamily: "Poppins",
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: AppColors.lightBorder,
      ),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: AppColors.lightBorder,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 2,
      ),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2,
      ),
    ),
  );


  static InputDecorationTheme darkInputDecorationTheme =
      InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkCard,

    contentPadding: const EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 16,
    ),

    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.primary,
    
    hintStyle: TextStyle(
      color: Colors.grey.shade400,
      fontSize: 15,
      fontFamily: "Poppins",
    ),

    labelStyle: const TextStyle(
      color: Colors.white70,
      fontSize: 15,
      fontFamily: "Poppins",
    ),

    floatingLabelStyle: TextStyle(
      color: AppColors.primary,
      fontSize: 16,
      fontFamily: "Poppins",
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: AppColors.darkBorder,
      ),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: AppColors.darkBorder,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 2,
      ),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2,
      ),
    ),
  );
}