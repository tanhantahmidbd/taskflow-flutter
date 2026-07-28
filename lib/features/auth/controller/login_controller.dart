import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/validator/app_validator.dart';

class LoginController extends GetxController {

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (formKey.currentState!.validate()) {
      // API call বা login logic এখানে হবে
      emailController.clear();
      passwordController.clear();
      print("Login Success");
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}