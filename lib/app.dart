import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routes/app_routes.dart';



class TaskFlow extends StatelessWidget {
  const TaskFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskFlow',
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}