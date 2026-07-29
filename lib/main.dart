import 'package:flutter/material.dart';
import 'app.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/widgets/loading_controller.dart';
import 'package:get_storage/get_storage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(LoadingController());
  runApp( TaskFlow());
}