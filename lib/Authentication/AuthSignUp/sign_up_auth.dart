

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:signup_signin_ui_design/Server_Url/const_data.dart';
import '../../Models/signUpModels/Sign_up_models.dart';

class SignUpAuth{
  Future<bool> SignUpWithData(String name, String email, String phone, String password)async{
    String url = Config.baseUrl + Config.signUpUrl;
    var responce = await http.post(Uri.parse(url), body: <String, String>{
      'name': name,
      'email': email,
      'phone' : phone,
      'password': password
    });

    var data = jsonDecode(responce.body);
    if(responce.statusCode == 200){
      var message = SignUpModels.fromJson(data);
      print("SignUp Message : $message");
      return true;
    }
    else {
      print("Wrong SignUP");
      return false;
    }
  }
}