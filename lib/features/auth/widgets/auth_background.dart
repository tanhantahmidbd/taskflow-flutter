import'package:flutter/material.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/utils/helper/device_info.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(
  children: [
    Positioned(
      right: -120,
      top: -300,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.12),
          shape: BoxShape.circle,
        ),
      ),
    ),

    Positioned(
      left: -150,
      bottom: -250,
      child: Container(
        width: width * 0.8,
        height: height * 0.5,
        decoration: BoxDecoration(
          color: AppColors.secondary.withOpacity(0.10),
          shape: BoxShape.circle,
        ),
      ),
    ),

    Container(
      padding: const EdgeInsets.all(20),
      child: child,
    ),
  ],
);
  }
}