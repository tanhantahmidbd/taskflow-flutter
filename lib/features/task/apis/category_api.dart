import 'package:http/http.dart' as http;
import 'package:taskflow/core/constants/api_service.dart';
import 'package:taskflow/utils/helper/app_overlay.dart';
import 'dart:convert';
import 'package:taskflow/features/task/models/category_model.dart';

class CategoryApi{

  Future<List<CategoryResponseModel>> read()async{
    try{
      final response = await http.get(
        ApiService.endpoint(ApiService.categories),
        headers: ApiService.headers
      );
      final statusCode = response.statusCode;
      final Map<String,dynamic> body = json.decode(response.body);
  
      if(statusCode==200 && body["status"]==true){
        AppOverlay.successSnackBar(message: body["message"]);
        if(body["data"]!=null){
          List<dynamic> data = body["data"];
          return data.map((e) => CategoryResponseModel.fromJson(e)).toList();
          
        }else{
          return [];
        }
      }else{
        AppOverlay.errorSnackBar(message: body["message"]);
        return [];
      }
    }catch(e){
      AppOverlay.errorSnackBar(message: e.toString());
      return [];
    }     
  }//=====Read End========

  Future<void> add(CategoryRequestModel model) async {
    try{
      final response = await http.post(
        ApiService.endpoint(ApiService.categories),
        body: json.encode(model.toJson()),
        headers: ApiService.headers,
      );

      final statusCode = response.statusCode;
      final Map<String,dynamic> body = json.decode(response.body);

      if(statusCode==201 && body["status"]==true){
        AppOverlay.successSnackBar(message: body["message"]);
      }else{
        AppOverlay.errorSnackBar(message: body["message"]);
      }
      
    }catch(e){
      AppOverlay.errorSnackBar(message: e.toString());
    }
  }//======Add End====
  Future<void> update(int id,CategoryUpdateModel model) async {
    try{
      final response = await http.put(
        ApiService.endpoint("${ApiService.categories}/$id"),
        body: json.encode(model.toJson()),
        headers: ApiService.headers,
      );

      final statusCode = response.statusCode;
      final Map<String,dynamic> body = json.decode(response.body);

      if(statusCode==200 && body["status"]==true){
        AppOverlay.successSnackBar(message: body["message"]);
      }else{
        AppOverlay.errorSnackBar(message: body["message"]);
      }
      
    }catch(e){
      AppOverlay.errorSnackBar(message: e.toString());
    }
  }//======Update End====
  Future<void> delete(int id) async {
    try{
      final response = await http.delete(
        ApiService.endpoint("${ApiService.categories}/$id"),
        headers: ApiService.headers,
      );

      final statusCode = response.statusCode;
      final Map<String,dynamic> body = json.decode(response.body);

      if(statusCode==200 && body["status"]==true){
        AppOverlay.successSnackBar(message: body["message"]);
      }else{
        AppOverlay.errorSnackBar(message: body["message"]);
      }
      
    }catch(e){
      AppOverlay.errorSnackBar(message: e.toString());
    }
  }//======Delete End====

  
  
}//------