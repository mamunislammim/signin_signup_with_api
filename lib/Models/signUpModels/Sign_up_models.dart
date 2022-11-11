import 'Data.dart';

/// success : true
/// message : "Success."
/// data : {"user_id":43,"token":"132|eL14buedoBfJstpfRWmbrENdV266dSPmXCR2i2L2","token_type":"Bearer"}

class SignUpModels {
  SignUpModels({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  SignUpModels.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
SignUpModels copyWith({  bool? success,
  String? message,
  Data? data,
}) => SignUpModels(  success: success ?? _success,
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