import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskflow/features/home/views/home.dart';
import 'package:taskflow/core/constants/color.dart';
import 'package:taskflow/features/task/views/create.dart';

class AppBottomNav extends StatelessWidget{
  const AppBottomNav({super.key});

  @override
  Widget build(BuildContext context){

    final controller = Get.put(NavigationController());
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    
    return Scaffold(
      body: Obx(() =>controller.screens[controller.selected.value]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsetsGeometry.only(left: 16,right: 16, bottom: 16 ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 2,
          selectedIndex: controller.selected.value,
          onDestinationSelected: (index) => controller.selected.value = index,
          backgroundColor: darkMode? AppColors.darkCard : AppColors.lightCard,
          indicatorColor: AppColors.transparent,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_rounded,color: controller.selected.value == 0 ? AppColors.primary : Colors.grey,),label: "Home",),
            NavigationDestination(icon: Icon(Icons.calendar_month_rounded,color: controller.selected.value == 1 ? AppColors.primary : Colors.grey,),label: "Tasks",),
            NavigationDestination(icon: Icon(Icons.add_task_rounded,color: controller.selected.value == 2 ? AppColors.primary : Colors.grey,),label: "Create",),
            NavigationDestination(icon: Icon(Icons.analytics_rounded,color: controller.selected.value == 3 ? AppColors.primary : Colors.grey,),label: "Statistics",),
            NavigationDestination(icon: Icon(Icons.person_rounded,color: controller.selected.value == 4 ? AppColors.primary : Colors.grey,),label: "Account",),        
          ],
        ),//---NavigationBar
      ),//Obx,
        ),//----ClipRRect
      ),//---Padding
    );
  }

}

class NavigationController extends GetxController{
  final RxInt selected = 0.obs;

  final screens = [
    const Home(),
    const Center(child: Text("Tasks")),
    const CreateTask(),
    const Center(child: Text("Statistics")),
    const Center(child: Text("Account"))
  ];
}