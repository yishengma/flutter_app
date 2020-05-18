import 'package:flutter/material.dart';

class HomeHomePage extends StatefulWidget {
  @override
  _HomeHomePageState createState() => _HomeHomePageState();
}

class _HomeHomePageState extends State<HomeHomePage> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder:(context,index){
          return ListTile(title: Text("item $index"));
        });
  }

  @override
  void initState() {
    super.initState();
  }
}
