/// id : 51
/// title : "Taina Blue Retreat is a Converted Tower on the Greek Coast"
/// image : ["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png"]
/// date : "2022-03-23"
/// created_at : "2022-03-23T05:05:21.000000Z"
/// news_subcategory : "Politics"
/// news_category : "Politics"
/// news_categoryslug : "politics-news"
/// reporter_name : "Repoter 11"

class Data {
  Data({
      int? id, 
      String? title, 
      List<String>? image, 
      String? date, 
      String? createdAt, 
      String? newsSubcategory, 
      String? newsCategory, 
      String? newsCategoryslug, 
      String? reporterName,}){
    _id = id;
    _title = title;
    _image = image;
    _date = date;
    _createdAt = createdAt;
    _newsSubcategory = newsSubcategory;
    _newsCategory = newsCategory;
    _newsCategoryslug = newsCategoryslug;
    _reporterName = reporterName;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _image = json['image'] != null ? json['image'].cast<String>() : [];
    _date = json['date'];
    _createdAt = json['created_at'];
    _newsSubcategory = json['news_subcategory'];
    _newsCategory = json['news_category'];
    _newsCategoryslug = json['news_categoryslug'];
    _reporterName = json['reporter_name'];
  }
  int? _id;
  String? _title;
  List<String>? _image;
  String? _date;
  String? _createdAt;
  String? _newsSubcategory;
  String? _newsCategory;
  String? _newsCategoryslug;
  String? _reporterName;
Data copyWith({  int? id,
  String? title,
  List<String>? image,
  String? date,
  String? createdAt,
  String? newsSubcategory,
  String? newsCategory,
  String? newsCategoryslug,
  String? reporterName,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  image: image ?? _image,
  date: date ?? _date,
  createdAt: createdAt ?? _createdAt,
  newsSubcategory: newsSubcategory ?? _newsSubcategory,
  newsCategory: newsCategory ?? _newsCategory,
  newsCategoryslug: newsCategoryslug ?? _newsCategoryslug,
  reporterName: reporterName ?? _reporterName,
);
  int? get id => _id;
  String? get title => _title;
  List<String>? get image => _image;
  String? get date => _date;
  String? get createdAt => _createdAt;
  String? get newsSubcategory => _newsSubcategory;
  String? get newsCategory => _newsCategory;
  String? get newsCategoryslug => _newsCategoryslug;
  String? get reporterName => _reporterName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['image'] = _image;
    map['date'] = _date;
    map['created_at'] = _createdAt;
    map['news_subcategory'] = _newsSubcategory;
    map['news_category'] = _newsCategory;
    map['news_categoryslug'] = _newsCategoryslug;
    map['reporter_name'] = _reporterName;
    return map;
  }

}