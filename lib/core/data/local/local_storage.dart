import 'package:get_storage/get_storage.dart';

class LocalStorageService{
  static final _box = GetStorage();

  static const String _keyName = 'name';
  static const String _keyEmail = 'email';
  static const String _keyToken = 'token';
  
  static Future<void> saveUserData(Map<String,String> data)async{
    await _box.write(_keyName,data['name']);
    await _box.write(_keyEmail,data['email']);
    await _box.write(_keyToken,data['token']);
  }//--------

  static String? getUserData(String key){
    return _box.read<String>(key);
  }//----
  
  static Future<void> logout() async{
    await _box.erase();
  }//----

  static bool isLoggedIn(){
    final token = _box.read(_keyToken);
    if(token!=null && token.isNotEmpty){
      return true;
    }
    return false;
  }//-----  
}