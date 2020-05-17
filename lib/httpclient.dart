import 'package:dio/dio.dart';

class HttpRequest {
  static final dio = Dio();
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);

  static dynamic request(String url,
      {String method = "get", Map<String, dynamic> params}) async {
    final option = Options(method: method);
    Response response = await dio.request(url,queryParameters: params,options: option);
    return response.data;
  }
}

class HttpConfig {
  static const String baseURL = "";
  static const int timeout = 3000;
}
