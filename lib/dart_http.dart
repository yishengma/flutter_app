//网络库
//http
//dio 三方库

//
import 'package:dio/dio.dart';

main() {
  var dio = Dio();
  dio.get("https://ke.qq.com/course/list/NDK")
  .then((value) => print(value));
  
}