import 'package:flutterapp/httpclient.dart';

class HomeRequest {
  static void requestMovieList() {
    final String URL = "";

    HttpRequest.request(URL);
  }
}