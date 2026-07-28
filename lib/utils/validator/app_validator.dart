import 'package:email_validator/email_validator.dart';

class AppValidator {
  AppValidator._();

  static String? email(String? value){
    if(value==null ||value.trim().isEmpty){
      return "Email is required";
    }
    if(!EmailValidator.validate(value.trim())){
      return "Enter a valid email";
    }
    return null;
  }//===========
  
  static String? password(String? value){
    if(value==null ||value.trim().isEmpty){
      return "Password is required";
    }
    if(value.length<6){
      return 'Password must be at least 6 characters';
    }
    return null;
  }//===========
  
  static String? requiredField(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    return null;
  }
  
}