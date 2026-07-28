import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/features/auth/widgets/auth_background.dart';
import 'package:taskflow/features/auth/controller/login_controller.dart';
import 'package:taskflow/features/auth/widgets/login_form.dart';
import 'package:taskflow/utils/widgets/global_loading.dart';


class Login extends StatelessWidget{
   Login({super.key});

  final controller = Get.put(LoginController());
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AuthBackground(
        child: Stack(
          children: [
            GlobalLoading(),
            LoginForm(controller: controller,),
          ],
        ),//Stack
      ),
    );
  }
}