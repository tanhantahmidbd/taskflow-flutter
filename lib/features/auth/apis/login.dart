import 'package:http/http.dart' as http;
import 'package:taskflow/core/constants/api_service.dart';
import 'package:taskflow/core/data/local/local_storage.dart';
import 'dart:convert';
import 'package:taskflow/utils/helper/app_overlay.dart';

Future<bool> loginApi(Map<String,dynamic> loginInfo)async{
  try{
    final apiRequest =  await http.post(
        ApiService.endpoint(ApiService.login),
        body: ApiService.apiBody(loginInfo),
        headers: ApiService.headers
      );

    final statusCode = apiRequest.statusCode;
    final Map<String, dynamic> body = json.decode(apiRequest.body);
    if(statusCode==200 && body["status"]==true){
      if(body["data"]!=null){
        await LocalStorageService.saveUserData(body["data"]);
      }
      AppOverlay.successSnackBar(message: body["message"]);
      return true;
    }else{
      AppOverlay.errorSnackBar(message: body["message"]);
      return false;
    }
    
  }catch(e){
    AppOverlay.errorSnackBar(message: e.toString());
    return false;
  }
}//--------
