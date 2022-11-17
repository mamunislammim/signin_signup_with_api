import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:signup_signin_ui_design/Server_Url/signin_signup_url.dart';
import 'package:http/http.dart' as http;

import '../../Models/getDataModel/Get_data_model.dart';


class GetData{

  Future<GetDataModel> GetAllData()async{
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token')!;
    String url = Config.baseUrl + Config.getData;
    var responce = await http.get(Uri.parse(url), headers: {
      'Authorization': 'Bearer $token'
    });
    var data = jsonDecode(responce.body);
    if(responce.statusCode == 200){
      return GetDataModel.fromJson(data);
    }
    else  throw Exception('User Not Found');
  }
}