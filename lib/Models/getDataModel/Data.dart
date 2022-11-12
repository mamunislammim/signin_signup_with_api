import 'User.dart';

/// user : {"id":37,"name":"mamuni","email":"mamun@gmail.comm","phone":"017618105311","image":"https://cashrocket.maantechnology.com/","user_type":"User","refer":null,"refer_code":"RF7143","facebook_token":null,"google_token":null,"status":1,"email_verified_at":null,"access_date":"2022-11-10 18:18:28","remember_token":null,"created_at":"2022-11-10T17:18:28.000000Z","updated_at":"2022-11-10T17:18:28.000000Z","wallet":{"id":31,"user_id":37,"balance":0,"status":1,"created_at":"2022-11-10T17:18:28.000000Z","updated_at":"2022-11-10T17:18:28.000000Z"}}

class Data {
  Data({
      User? user,}){
    _user = user;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  User? _user;
Data copyWith({  User? user,
}) => Data(  user: user ?? _user,
);
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}