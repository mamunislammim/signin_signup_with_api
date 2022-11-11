

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:signup_signin_ui_design/Server_Url/const_data.dart';
 import '../../Models/signupmodelsss/Signinmod.dart';

class SignInAuth{

  Future<bool> SignInWithMail(String email, String password)async{
    String signInUrlMaking = Config.baseUrl + Config.signInUrl;

    var responce = await http.post(Uri.parse(signInUrlMaking),body: <String, String> {
      'email': email,
      'password': password
    });

    var data = jsonDecode(responce.body);
    if(responce.statusCode == 200){
      var message = Signinmod.fromJson(data);
      print(message);
      return true;
    }
    return false;
  }
}