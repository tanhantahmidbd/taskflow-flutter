import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/features/auth/widgets/auth_background.dart';
import 'package:taskflow/features/auth/controller/register_controller.dart';
import 'package:taskflow/features/auth/widgets/register_form.dart';
import 'package:taskflow/utils/widgets/global_loading.dart';


class Register extends StatelessWidget{
 Register({super.key});

  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AuthBackground(
        child: Stack(
          children: [
            RegisterForm(controller: controller),
            const GlobalLoading(),
          ],
        ),//Stack
      ),
    );
  }
}