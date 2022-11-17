import 'Data.dart';
import 'Links.dart';

/// current_page : 1
/// data : [{"id":51,"title":"Taina Blue Retreat is a Converted Tower on the Greek Coast","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png"],"date":"2022-03-23","created_at":"2022-03-23T05:05:21.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Repoter 11"},{"id":48,"title":"Entertainment partners chill at home with a few must-see movies or head out for","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050111_maannewsimage19102021_094212_remote_work3_190515-800x450.jpg"],"date":"2021-11-06","created_at":"2021-10-23T11:50:10.000000Z","news_subcategory":"World","news_category":"World","news_categoryslug":"world-news","reporter_name":"Reporter 21"},{"id":47,"title":"With the thrills of a casino, the excitement of live harness racing and the delight of fine food and spirits, you can kick back","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050503_politics.jpg"],"date":"2021-10-23","created_at":"2021-10-23T11:28:51.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":46,"title":"Amazon has 143 billion reasons to keep Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_072605_amazon.jpg"],"date":"2021-11-03","created_at":"2021-10-23T07:24:11.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":45,"title":"Bolsonaro’s new alliance for brazil is a lesson in the politics of loyalty and campaign finance  For over three decades, Bolsonaro used different","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034317_politics_3.jpg"],"date":"2021-11-14","created_at":"2021-10-23T06:12:58.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":44,"title":"Official press statement an historic moment time and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034246_politics_2.jpg"],"date":"2021-10-23","created_at":"2021-10-23T06:09:35.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":43,"title":"Green-party success Is reshaping global politics are increasingly shaping the debate in countries around the world","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_060444_politics.jpg"],"date":"2021-10-23","created_at":"2021-10-23T06:04:44.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":42,"title":"Computer technology.generation new computer technology Stock Our managed it and it monitoring services allow you to focus","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_114415_techno.jpg"],"date":"2021-11-04","created_at":"2021-10-21T12:48:57.000000Z","news_subcategory":"Communication","news_category":"Technology","news_categoryslug":"technology-news","reporter_name":"Reporter 21"},{"id":41,"title":"Manages and administers a specific function of the Police department’s it systems  including support in computer hardware","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_035547_card_1.jpg"],"date":"2021-11-03","created_at":"2021-10-21T12:46:11.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":40,"title":"Two georgian silver medallists were told to leave the olympic games for taking a sightseeing trip in tokyo .is the world's largest city","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034427_basket_ball.jpg"],"date":"2021-10-23","created_at":"2021-10-21T12:42:10.000000Z","news_subcategory":"Cricket","news_category":"Sports","news_categoryslug":"sports-news","reporter_name":"Reporter 21"}]
/// first_page_url : "http://maannews.maantechnology.com/api/latest_news?page=1"
/// from : 1
/// last_page : 5
/// last_page_url : "http://maannews.maantechnology.com/api/latest_news?page=5"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=1","label":"1","active":true},{"url":"http://maannews.maantechnology.com/api/latest_news?page=2","label":"2","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=3","label":"3","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=4","label":"4","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=5","label":"5","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "http://maannews.maantechnology.com/api/latest_news?page=2"
/// path : "http://maannews.maantechnology.com/api/latest_news"
/// per_page : 10
/// prev_page_url : null
/// to : 10
/// total : 46

class Datas {
  Datas({
      int? currentPage, 
      List<Data>? data, 
      String? firstPageUrl, 
      int? from, 
      int? lastPage, 
      String? lastPageUrl, 
      List<Links>? links, 
      String? nextPageUrl, 
      String? path, 
      int? perPage, 
      dynamic prevPageUrl, 
      int? to, 
      int? total,}){
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
}

  Datas.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }
  int? _currentPage;
  List<Data>? _data;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  String? _nextPageUrl;
  String? _path;
  int? _perPage;
  dynamic _prevPageUrl;
  int? _to;
  int? _total;
Datas copyWith({  int? currentPage,
  List<Data>? data,
  String? firstPageUrl,
  int? from,
  int? lastPage,
  String? lastPageUrl,
  List<Links>? links,
  String? nextPageUrl,
  String? path,
  int? perPage,
  dynamic prevPageUrl,
  int? to,
  int? total,
}) => Datas(  currentPage: currentPage ?? _currentPage,
  data: data ?? _data,
  firstPageUrl: firstPageUrl ?? _firstPageUrl,
  from: from ?? _from,
  lastPage: lastPage ?? _lastPage,
  lastPageUrl: lastPageUrl ?? _lastPageUrl,
  links: links ?? _links,
  nextPageUrl: nextPageUrl ?? _nextPageUrl,
  path: path ?? _path,
  perPage: perPage ?? _perPage,
  prevPageUrl: prevPageUrl ?? _prevPageUrl,
  to: to ?? _to,
  total: total ?? _total,
);
  int? get currentPage => _currentPage;
  List<Data>? get data => _data;
  String? get firstPageUrl => _firstPageUrl;
  int? get from => _from;
  int? get lastPage => _lastPage;
  String? get lastPageUrl => _lastPageUrl;
  List<Links>? get links => _links;
  String? get nextPageUrl => _nextPageUrl;
  String? get path => _path;
  int? get perPage => _perPage;
  dynamic get prevPageUrl => _prevPageUrl;
  int? get to => _to;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}