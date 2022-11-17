import 'dart:convert';

import 'package:signup_signin_ui_design/Server_Url/news_server_url.dart';

import '../../Models/latestNewsModels/LatestNewsModel.dart';
import 'package:http/http.dart' as http;
class LatestNewsAuth{

  Future<LatestNewsModel> getLatestNews()async{
    var response = await http.get(Uri.parse(NewsServer.serverUrl + NewsServer.latestUrl));
    if(response.statusCode==200){
      return LatestNewsModel.fromJson(jsonDecode(response.body));
    }
    else{
      return throw Exception("Error");
    }
  }
}