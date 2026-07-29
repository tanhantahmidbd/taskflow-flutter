import 'package:taskflow/core/data/local/local_storage.dart';
import 'dart:convert';

class ApiService {
  ApiService._();

  //----Url----
  static const String apiUrl ="http://127.0.0.1:8001/api";
  static const String apiVersion = "/v1";
  static const String baseUrl = '$apiUrl$apiVersion';
  
  //---Api EndPoints----
  static const String login ="/login";
  static const String register ="/register";
  static const String logout ="/logout";
  static const String tasks ="/tasks";
  static const String categories ="/categories";
  

  //---Api Headers---
  static const String contentType ="application/json";
  static const String authorization ="Bearer ";
  
  static Map<String,String> get headers{
    final token = LocalStorageService.getUserData("token");
    final Map<String, String>headerMap = {
      "Content-Type" : contentType,
    };
    if (token != null && token!.isNotEmpty) {
      headerMap["Authorization"] = "$authorization$token";
    }
    return headerMap;
  }//-----

  //----Api Body----
  static String apiBody(Map<String,dynamic> body){
    return json.encode(body);
  }//------
  
  //-----URL Builder
  static Uri endpoint(String path) {
    return Uri.parse("$baseUrl$path");
  }//----
  
  
}