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
import 'package:taskflow/core/routes/app_routes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {

    final width = AppDevice.width(context);
    final height = AppDevice.height(context);
    
    return SingleChildScrollView(
      child: SizedBox(
        height: height,
        child: Form(
          key: controller.formKey,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.15,
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
              SizedBox(
                height: height * 0.05,
              ),
              Text("Login to your account",
                style: Theme.of(context).textTheme.bodySmall
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

              const SizedBox(height: AppSizes.sm),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    // Forgot password logic
                  },
                  child: Text(
                    "Forgot password",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(
                          color: AppColors.primaryLight,
                        ),
                  ),
                ),
              ),
              SizedBox(height: AppSizes.lg),

              AppElevatedButton(
                text: "Log In",
                onPressed: controller.login,
              ),
              SizedBox(
                height: height * 0.10,
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(width: AppSizes.sm),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    // Navigate to Sign Up
                    Get.offAndToNamed(AppRoutes.register);
                  },
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),//Row
            ],
          ),//-----Column
        ),
      ),
    );
  }
}