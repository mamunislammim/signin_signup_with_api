import 'Data.dart';

/// success : true
/// message : "Get Data Successfully  !"
/// data : {"user":{"id":37,"name":"mamuni","email":"mamun@gmail.comm","phone":"017618105311","image":"https://cashrocket.maantechnology.com/","user_type":"User","refer":null,"refer_code":"RF7143","facebook_token":null,"google_token":null,"status":1,"email_verified_at":null,"access_date":"2022-11-10 18:18:28","remember_token":null,"created_at":"2022-11-10T17:18:28.000000Z","updated_at":"2022-11-10T17:18:28.000000Z","wallet":{"id":31,"user_id":37,"balance":0,"status":1,"created_at":"2022-11-10T17:18:28.000000Z","updated_at":"2022-11-10T17:18:28.000000Z"}}}

class GetDataModel {
  GetDataModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  GetDataModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
GetDataModel copyWith({  bool? success,
  String? message,
  Data? data,
}) => GetDataModel(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}