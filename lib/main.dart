import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());//dart 语法 执行main 函数，=> 执行单个函数

//继承 Widget 应用本身也成为一个 widget
//widget 的主要工作是提供一个 build 的方法来描述如何根据较低的 widget 来显示自己
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
//          child: new Text('Hello world'),
        child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}