import 'package:flutter/material.dart';
import 'app.dart';
import 'package:get/get.dart';
import 'package:taskflow/utils/widgets/loading_controller.dart';

void main() {
  Get.put(LoadingController());
  runApp( TaskFlow());
}