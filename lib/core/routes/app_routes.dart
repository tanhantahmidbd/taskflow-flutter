import 'package:get/get.dart';
import 'package:taskflow/features/auth/views/login.dart';
import 'package:taskflow/features/auth/views/register.dart';
import 'package:taskflow/features/home/views/home.dart';

class AppRoutes {
  AppRoutes._();

  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';

  static final routes = [
    GetPage(name:home,page: ()=> Home(),),
    GetPage(name:login,page: ()=> Login(),),
    GetPage(name:register,page: ()=> Register(),),
    
  ];
}