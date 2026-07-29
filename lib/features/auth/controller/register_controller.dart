import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/widgets/loading_controller.dart';
import 'package:taskflow/features/auth/apis/register.dart';
import 'package:taskflow/core/routes/app_routes.dart';
import 'package:taskflow/utils/helper/app_overlay.dart';


class RegisterController extends GetxController{

  final LoadingController loading = Get.find<LoadingController>();
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();   
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();


  Future<void> register()async{    
    if(!formKey.currentState!.validate()){return;}
    loading.show();
    try{
      final registerInfo = {
        "name" : nameController.text.trim(),
        "email" : emailController.text.trim(),
        "password" : passwordController.text.trim(),
        "password_confirmation" : confirmPasswordController.text.trim(),  
      };

      final success = await registerApi(registerInfo);
      if(success){
        Get.offAndToNamed(AppRoutes.home);
      }
    }catch(e){
      AppOverlay.errorSnackBar(message: "Something is wrong");
    }finally{
      loading.hide();
    }
  }
  //=============
  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}