import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/helper/device_info.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/features/auth/widgets/auth_background.dart';
import 'package:taskflow/utils/widgets/text_form_field.dart';
import 'package:taskflow/utils/widgets/elevated_button.dart';
import 'package:taskflow/utils/validator/app_validator.dart';
import 'package:taskflow/features/auth/controller/login_controller.dart';
import 'package:taskflow/core/constants/app_sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: controller.formKey,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: AppDevice.height(context) * 0.20,
              ),
              Text("Task-Flow",
                style: Theme.of(context).textTheme.headlineLarge!.
                   copyWith(color: AppColors.primary),
              ),
              SizedBox(height: AppSizes.sm),
              Text("Task Management",
                style: Theme.of(context).textTheme.bodyMedium!.
                   copyWith(color: AppColors.primaryDark),
              ),
              SizedBox(height: AppSizes.lg),
              
              AppTextFormField(
                controller: controller.emailController,
                hintText: "Enter your email",
                labelText: "Email",
                validator: AppValidator.email,
                prefixIcon: const Icon(Icons.email_outlined),
              ),

              const SizedBox(height: AppSizes.sm),

              AppTextFormField(
                controller: controller.passwordController,
                obscureText: true,
                hintText: "Enter your password",
                labelText: "Password",
                validator: AppValidator.password,
                prefixIcon: const Icon(Icons.lock_outlined),
              ),

              const SizedBox(height: AppSizes.lg),

              AppElevatedButton(
                text: "Log In",
                onPressed: controller.login,
              ),

            ],
          ),//-----Column
        ),
      ),
    );
  }
}