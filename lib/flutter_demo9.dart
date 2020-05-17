import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
          appBar: AppBar(),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext ctx, int index) {
                        return Container(
                          color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
                        );
                      }),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1.5))
            ],
          )),
    );
  }
}


//SafeArea   让内容在屏幕安全区域
//SliverSafeArea  Sliver 的屏幕安全区域


//ScrollController //监听滚动
//Notification //监听滚动状态