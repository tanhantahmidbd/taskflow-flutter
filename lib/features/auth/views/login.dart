import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/helper/device_info.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/features/auth/widgets/auth_background.dart';
import 'package:taskflow/utils/widgets/text_form_field.dart';
import 'package:taskflow/utils/widgets/elevated_button.dart';
import 'package:taskflow/utils/validator/app_validator.dart';
import 'package:taskflow/features/auth/controller/login_controller.dart';
import 'package:taskflow/features/auth/widgets/login_form.dart';

class Login extends StatelessWidget{
   Login({super.key});

  final controller = Get.put(LoginController());
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AuthBackground(
        child: LoginForm(
          controller: controller,
        ),
      ),
    );
  }
}