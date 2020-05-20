
import 'package:flutter/material.dart';
import 'package:flutterapp/demo/ui/pages/main_page.dart';

class Router {
  static final Map<String,WidgetBuilder> routers = {
    MainScreen.routeName:(ctx) => MainScreen(),
  };

  static final String initialRoute = MainScreen.routeName;

  static final RouteFactory generateRoute = (setting){

  };

  static final RouteFactory unknownRoute = (setting){

  };
}