import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();   
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();


  void register(){
    if(formKey.currentState!.validate()){
      //====Logic Start======
      
      nameController.clear();
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
         
      //====Logic End======

      //=====Api Call Start========
      
      //=====Api Call End========
      
    }//==========
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