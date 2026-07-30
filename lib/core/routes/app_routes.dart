import 'package:get/get.dart';
import 'package:taskflow/features/auth/views/login.dart';
import 'package:taskflow/features/auth/views/register.dart';
import 'package:taskflow/features/home/views/home.dart';
import 'package:taskflow/core/constants/bottom_nav.dart';
import 'package:taskflow/features/task/views/create.dart';


class AppRoutes {
  AppRoutes._();

  static const String bottom_nav = "/bottom_nav";
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String create_task = '/create_task';
  

  static final routes = [
    GetPage(name: bottom_nav,page: ()=> AppBottomNav(),),
    GetPage(name:home,page: ()=> Home(),),
    GetPage(name:login,page: ()=> Login(),),
    GetPage(name:register,page: ()=> Register(),),
    GetPage(name:create_task,page: ()=> CreateTask(),),
  ];
}