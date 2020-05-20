import 'package:flutter/material.dart';
//http://123.207.32.32:8001/api/meal
class FavoriteScreen extends StatefulWidget {
  static const String routeName = "FavoriteScreen";

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的收藏"),
      ),
      body: Text("我的收藏"),
    );
  }
}
