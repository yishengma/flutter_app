import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() {
  runApp(
      NewApp()
  );
}

/**
 * Widget
 * 有状态的 Widget StatefulWidget
 * 无状态的 Widget StatelessWidget
 *
 */
class NewApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉 debug 标签
      home: NewHomePage(), //脚手架用于快速搭建页面
    );
  }
}

class NewHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个 Flutter 程序"),
        ),
        body: NewCenterBody()
    );
  }
}


class NewCenterBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello world",
        style: TextStyle(
            fontSize: 30,
            color: Colors.orange
        ),
      ),
    );
  }
}



