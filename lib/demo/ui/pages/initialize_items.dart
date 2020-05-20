import 'package:flutter/material.dart';
import 'package:flutterapp/demo/ui/pages/HomeScreen.dart';
import 'package:flutterapp/demo/ui/pages/FavoriteScreen.dart';

final List<Widget> pages = [
  HomeScreen(),
  FavoriteScreen(),
];


final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页")),
  BottomNavigationBarItem(icon: Icon(Icons.star),title: Text("收藏")),
];