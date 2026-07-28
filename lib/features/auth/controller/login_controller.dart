import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/widgets/loading_controller.dart';

class LoginController extends GetxController {

  final LoadingController loading = Get.find<LoadingController>();

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
    

  void login() {
    if (formKey.currentState!.validate()) {
      //====Logic Start======
      loading.show();
      emailController.clear();
      passwordController.clear();
      
      //====Logic End======

      //=====Api Call Start========
      
      //=====Api Call End========
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}