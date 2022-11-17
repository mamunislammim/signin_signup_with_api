/// id : 12
/// news_id : 21
/// name : "Arif Khan"
/// email : "superadmin21@gmail.com"
/// comment : "There are more information about news ..."
/// created_at : "2022-01-30T10:57:51.000000Z"
/// updated_at : "2022-01-30T10:57:51.000000Z"

class Comments {
  Comments({
      int? id, 
      int? newsId, 
      String? name, 
      String? email, 
      String? comment, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _newsId = newsId;
    _name = name;
    _email = email;
    _comment = comment;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Comments.fromJson(dynamic json) {
    _id = json['id'];
    _newsId = json['news_id'];
    _name = json['name'];
    _email = json['email'];
    _comment = json['comment'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _newsId;
  String? _name;
  String? _email;
  String? _comment;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  int? get newsId => _newsId;
  String? get name => _name;
  String? get email => _email;
  String? get comment => _comment;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['news_id'] = _newsId;
    map['name'] = _name;
    map['email'] = _email;
    map['comment'] = _comment;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}