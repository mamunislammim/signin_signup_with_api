import 'Wallet.dart';

/// id : 37
/// name : "mamuni"
/// email : "mamun@gmail.comm"
/// phone : "017618105311"
/// image : "https://cashrocket.maantechnology.com/"
/// user_type : "User"
/// refer : null
/// refer_code : "RF7143"
/// facebook_token : null
/// google_token : null
/// status : 1
/// email_verified_at : null
/// access_date : "2022-11-10 18:18:28"
/// remember_token : null
/// created_at : "2022-11-10T17:18:28.000000Z"
/// updated_at : "2022-11-10T17:18:28.000000Z"
/// wallet : {"id":31,"user_id":37,"balance":0,"status":1,"created_at":"2022-11-10T17:18:28.000000Z","updated_at":"2022-11-10T17:18:28.000000Z"}

class User {
  User({
      int? id, 
      String? name, 
      String? email, 
      String? phone, 
      String? image, 
      String? userType, 
      dynamic refer, 
      String? referCode, 
      dynamic facebookToken, 
      dynamic googleToken, 
      int? status, 
      dynamic emailVerifiedAt, 
      String? accessDate, 
      dynamic rememberToken, 
      String? createdAt, 
      String? updatedAt, 
      Wallet? wallet,}){
    _id = id;
    _name = name;
    _email = email;
    _phone = phone;
    _image = image;
    _userType = userType;
    _refer = refer;
    _referCode = referCode;
    _facebookToken = facebookToken;
    _googleToken = googleToken;
    _status = status;
    _emailVerifiedAt = emailVerifiedAt;
    _accessDate = accessDate;
    _rememberToken = rememberToken;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _wallet = wallet;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _image = json['image'];
    _userType = json['user_type'];
    _refer = json['refer'];
    _referCode = json['refer_code'];
    _facebookToken = json['facebook_token'];
    _googleToken = json['google_token'];
    _status = json['status'];
    _emailVerifiedAt = json['email_verified_at'];
    _accessDate = json['access_date'];
    _rememberToken = json['remember_token'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _wallet = json['wallet'] != null ? Wallet.fromJson(json['wallet']) : null;
  }
  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  String? _image;
  String? _userType;
  dynamic _refer;
  String? _referCode;
  dynamic _facebookToken;
  dynamic _googleToken;
  int? _status;
  dynamic _emailVerifiedAt;
  String? _accessDate;
  dynamic _rememberToken;
  String? _createdAt;
  String? _updatedAt;
  Wallet? _wallet;
User copyWith({  int? id,
  String? name,
  String? email,
  String? phone,
  String? image,
  String? userType,
  dynamic refer,
  String? referCode,
  dynamic facebookToken,
  dynamic googleToken,
  int? status,
  dynamic emailVerifiedAt,
  String? accessDate,
  dynamic rememberToken,
  String? createdAt,
  String? updatedAt,
  Wallet? wallet,
}) => User(  id: id ?? _id,
  name: name ?? _name,
  email: email ?? _email,
  phone: phone ?? _phone,
  image: image ?? _image,
  userType: userType ?? _userType,
  refer: refer ?? _refer,
  referCode: referCode ?? _referCode,
  facebookToken: facebookToken ?? _facebookToken,
  googleToken: googleToken ?? _googleToken,
  status: status ?? _status,
  emailVerifiedAt: emailVerifiedAt ?? _emailVerifiedAt,
  accessDate: accessDate ?? _accessDate,
  rememberToken: rememberToken ?? _rememberToken,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  wallet: wallet ?? _wallet,
);
  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get image => _image;
  String? get userType => _userType;
  dynamic get refer => _refer;
  String? get referCode => _referCode;
  dynamic get facebookToken => _facebookToken;
  dynamic get googleToken => _googleToken;
  int? get status => _status;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get accessDate => _accessDate;
  dynamic get rememberToken => _rememberToken;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Wallet? get wallet => _wallet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['image'] = _image;
    map['user_type'] = _userType;
    map['refer'] = _refer;
    map['refer_code'] = _referCode;
    map['facebook_token'] = _facebookToken;
    map['google_token'] = _googleToken;
    map['status'] = _status;
    map['email_verified_at'] = _emailVerifiedAt;
    map['access_date'] = _accessDate;
    map['remember_token'] = _rememberToken;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_wallet != null) {
      map['wallet'] = _wallet?.toJson();
    }
    return map;
  }

}