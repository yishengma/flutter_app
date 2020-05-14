import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,//去掉 debug 标签
        home: Scaffold(
          appBar: AppBar(
            title: Text("第一个 Flutter 程序"),
          ),
          body: Center(
            child: Text(
              "Hello world",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange
              ),
            ),
          ),
        ),//脚手架用于快速搭建页面
      )
  );
}