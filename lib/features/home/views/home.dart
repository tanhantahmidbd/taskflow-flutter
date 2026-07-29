import'package:flutter/material.dart';
import 'package:taskflow/features/auth/controller/logout_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    final controller = Get.put(LogoutController());
    
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            controller.logout();
          },
          child: Text("Log Out"),
        )
      )
    );
  }
}