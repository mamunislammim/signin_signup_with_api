import 'dart:convert';
import 'package:http/http.dart' as http;
 import '../../Models/newsDetailsModel/NewsDetailsModels.dart';
import '../../Server_Url/news_server_url.dart';

class NewsDetailsRepo{

  Future<NewsDetailsModels> getDetails(String id)async{
    var response = await http.get(Uri.parse("${NewsServer.serverUrl}${NewsServer.detailsUrl}/$id"));
    if(response.statusCode==200){
      return NewsDetailsModels.fromJson(jsonDecode(response.body));
    }
    else{
      return throw Exception("Error");
    }
  }
}