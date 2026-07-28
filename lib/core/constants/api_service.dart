import 'package:http/http.dart' as http;
import 'package:taskflow/core/data/local/local_storage.dart';

class ApiService {
  ApiService._();

  //----Url----
  static const String apiUrl ="http://127.0.0.1:8000/api";
  static const String apiVersion = "/v1";
  static const String baseUrl = '$apiUrl$apiVersion';
  
  //---Api EndPoints----
  static const String login ="/login";
  static const String register ="/register";
  static const String tasks ="/tasks";
  static const String categories ="/categories";
  
  //----Authorization Token----
  static String? _token;
  static Future<void> init() async {
    _token = await LocalStorageService.getUserData("token");
  }

  //---Api Headers---
  static const String contentType ="application/json";
  static const String authorization ="Bearer ";
  
  static Map<String,String> get headers{
    final Map<String, String>headerMap = {
      "Content-Type" : contentType,
    };
    if (_token != null && _token!.isNotEmpty) {
      headerMap["Authorization"] = "$authorization$_token";
    }
    return headerMap;
  }//-----
}