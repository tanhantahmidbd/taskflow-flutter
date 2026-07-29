import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/widgets/loading_controller.dart';
import 'package:taskflow/features/auth/apis/login.dart';
import 'package:taskflow/core/routes/app_routes.dart';
import 'package:taskflow/utils/helper/app_overlay.dart';

class LoginController extends GetxController {

  final LoadingController loading = Get.find<LoadingController>();

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  
  Future<void> login() async{
    if (!formKey.currentState!.validate()) {
      return;      
    }
    loading.show();
      try{
        final loginInfo = {
          "email": emailController.text.trim(),
          "password": passwordController.text.trim()
        };
        final success = await loginApi(loginInfo);
        if(success){
          emailController.clear();
          passwordController.clear();
          Get.offAndToNamed(AppRoutes.home);
        }
      }catch(e){
        AppOverlay.errorSnackBar(message: "Something is wrong");
      }finally{
        loading.hide();
      }
    
  }//-------

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}