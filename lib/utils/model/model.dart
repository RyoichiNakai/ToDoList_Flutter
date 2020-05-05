import 'package:meta/meta.dart';

class Model {
  final String title;
  final String dateTime;
  final String key;

  Model({
    @required this.title,
    @required this.dateTime,
    @required this.key
  });

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["title"] = title;
    map["dateTime"] = dateTime;
    map["key"] = key;
    return map;
  }
}