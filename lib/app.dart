import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routes/app_routes.dart';
import 'core/constants/theme/theme.dart';
import 'core/data/local/local_storage.dart';


class TaskFlow extends StatelessWidget {
  const TaskFlow({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = LocalStorageService.isLoggedIn();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskFlow',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: isLoggedIn?AppRoutes.home : AppRoutes.login,
      getPages: AppRoutes.routes,
    );
  }
}