import 'dart:async';

class Data1 {

  var someData;

  Future<String> getData({bool needNewer = false}) async{

    someData = "通过网络获得数据了，这就是数据";

    return Future.delayed(const Duration(seconds: 4),()=>'{"name":"joy","age":33}');
  }


  static Data1? _instance;
  Data1._internal();
  factory Data1.getInstance() => _getInstance();
  static _getInstance() {
    return _instance ??= Data1._internal();
  }
}