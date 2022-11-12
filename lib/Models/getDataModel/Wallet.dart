/// id : 31
/// user_id : 37
/// balance : 0
/// status : 1
/// created_at : "2022-11-10T17:18:28.000000Z"
/// updated_at : "2022-11-10T17:18:28.000000Z"

class Wallet {
  Wallet({
      int? id, 
      int? userId, 
      int? balance, 
      int? status, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _balance = balance;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Wallet.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _balance = json['balance'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _userId;
  int? _balance;
  int? _status;
  String? _createdAt;
  String? _updatedAt;
Wallet copyWith({  int? id,
  int? userId,
  int? balance,
  int? status,
  String? createdAt,
  String? updatedAt,
}) => Wallet(  id: id ?? _id,
  userId: userId ?? _userId,
  balance: balance ?? _balance,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get userId => _userId;
  int? get balance => _balance;
  int? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['balance'] = _balance;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}