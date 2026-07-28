import 'package:flutter/material.dart';
import 'app.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/widgets/loading_controller.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taskflow/core/constants/api_service.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await ApiService.init();
  Get.put(LoadingController());
  runApp( TaskFlow());
}