/// user_id : 43
/// token : "132|eL14buedoBfJstpfRWmbrENdV266dSPmXCR2i2L2"
/// token_type : "Bearer"

class Data {
  Data({
      int? userId, 
      String? token, 
      String? tokenType,}){
    _userId = userId;
    _token = token;
    _tokenType = tokenType;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _token = json['token'];
    _tokenType = json['token_type'];
  }
  int? _userId;
  String? _token;
  String? _tokenType;
Data copyWith({  int? userId,
  String? token,
  String? tokenType,
}) => Data(  userId: userId ?? _userId,
  token: token ?? _token,
  tokenType: tokenType ?? _tokenType,
);
  int? get userId => _userId;
  String? get token => _token;
  String? get tokenType => _tokenType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['token'] = _token;
    map['token_type'] = _tokenType;
    return map;
  }

}