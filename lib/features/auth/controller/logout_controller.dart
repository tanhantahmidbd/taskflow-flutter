import 'package:get/get.dart';
import 'package:taskflow/features/auth/apis/logout.dart';
import 'package:taskflow/core/routes/app_routes.dart';

class LogoutController extends GetxController{

  Future<void> logout() async{
    final result = await logoutApi();
    if(result){
      Get.offAllNamed(AppRoutes.login);
    }
  }//----
}