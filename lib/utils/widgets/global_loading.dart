import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'loading_controller.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/utils/helper/device_info.dart';

class GlobalLoading extends StatelessWidget{
  const GlobalLoading({super.key});

  @override
  Widget build(BuildContext context){
    final LoadingController loading = Get.find<LoadingController>();
    return Obx(() {
      return loading.isLoading.value?Container(
        height: AppDevice.height(context),
        width: AppDevice.width(context),
        child: const Center(child: CircularProgressIndicator(color: AppColors.primary,),),
      ):SizedBox.shrink();
    });
  }
}