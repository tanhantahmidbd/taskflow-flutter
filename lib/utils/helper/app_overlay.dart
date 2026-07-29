import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/core/constants/app_sizes.dart';

class AppOverlay {
  AppOverlay._();

  static void successSnackBar({String title = "Success",required String message}){
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.success.withOpacity(0.1),
      icon: Icon(Icons.check_circle_outline,color: AppColors.success,),
      colorText: AppColors.success,
      duration: const Duration(seconds: 3),
      borderRadius: AppSizes.radiusSm,
      borderWidth: 1,
      borderColor: AppColors.primaryLight,
    );
  }//------
  static void errorSnackBar({String title = "Error",required String message}){
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.error.withOpacity(0.1),
      icon: Icon(Icons.error_outlined,color: AppColors.error,),
      colorText: AppColors.error,
      duration: const Duration(seconds: 3),
      borderRadius: AppSizes.radiusSm,
      borderWidth: 1,
      borderColor: AppColors.warning,
    );
  }//------
  
}