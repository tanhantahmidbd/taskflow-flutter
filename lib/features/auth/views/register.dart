import'package:flutter/material.dart';
import 'package:taskflow/features/auth/widgets/auth_background.dart';

class Register extends StatelessWidget{
  const Register({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AuthBackground(),
    );
  }
}