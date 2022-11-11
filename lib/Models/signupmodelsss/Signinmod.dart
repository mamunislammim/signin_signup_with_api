import 'Data.dart';

/// success : true
/// message : "User login successfully!"
/// data : {"user_id":37,"token":"135|BCvgsi7oTC6GCj8tWAyHws7b4nbTNozRw3HQ3XN7","name":"mamuni","email":"mamun@gmail.comm","phone":"017618105311","refer":null}

class Signinmod {
  Signinmod({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  Signinmod.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
Signinmod copyWith({  bool? success,
  String? message,
  Data? data,
}) => Signinmod(  success: success ?? _success,
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