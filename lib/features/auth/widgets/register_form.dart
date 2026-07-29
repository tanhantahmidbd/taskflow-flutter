import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/helper/device_info.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/features/auth/widgets/auth_background.dart';
import 'package:taskflow/utils/widgets/text_form_field.dart';
import 'package:taskflow/utils/widgets/elevated_button.dart';
import 'package:taskflow/utils/validator/app_validator.dart';
import 'package:taskflow/features/auth/controller/register_controller.dart';
import 'package:taskflow/core/constants/app_sizes.dart';
import 'package:taskflow/core/routes/app_routes.dart';


class RegisterForm extends StatelessWidget{
  const RegisterForm({super.key,required this.controller});

  final RegisterController controller;

  @override
  Widget build(BuildContext context){
    
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    return SingleChildScrollView(
      child: SizedBox(
        height: height,
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              SizedBox(height: height *0.15),
              Text("Task-Flow",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColors.primary),),
              Text("Task Management",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primaryDark),),
              SizedBox(height: height *0.10),
              Text("Create a new account",style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: AppSizes.md),
              AppTextFormField(controller: controller.nameController,hintText: "enter name",labelText: "Name",prefixIcon: Icon(Icons.person_outline),validator: (value)=>AppValidator.requiredField(value,"Name"),),
              SizedBox(height: AppSizes.lg),
              AppTextFormField(controller: controller.emailController,hintText: "enter email",labelText: "Email",prefixIcon: Icon(Icons.email_outlined),validator: AppValidator.email),
              SizedBox(height: AppSizes.lg),
              AppTextFormField(controller: controller.passwordController,hintText: "enter password",labelText: "Password",prefixIcon: Icon(Icons.lock_outlined),validator: AppValidator.password),
              SizedBox(height: AppSizes.lg),
              AppTextFormField(controller: controller.confirmPasswordController,hintText: "enter confirmation password",labelText: "Confirmation Password",prefixIcon: Icon(Icons.lock_outlined),validator:(value)=>AppValidator.confirmPassword(value,controller.passwordController.text)),
              SizedBox(height: AppSizes.lg),
              AppElevatedButton(text: "Register Account",onPressed: (){controller.register();},),
              SizedBox(height: height *0.10),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text("Already have an account?",style: Theme.of(context).textTheme.bodyMedium,),
                SizedBox(width: AppSizes.sm,),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero,minimumSize: Size.zero,tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: (){Get.offAndToNamed(AppRoutes.login);},
                  child: Text("Login",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primary,fontWeight: FontWeight.w600),),
                ),
              ],),//Row
              
            ],//Main Column children
          ),//Column
        ),//Form
      ),//SafeArea
    );//SingleChildScrollView
  }
}