import 'package:flutter/material.dart';

void main() => runApp(MyApp());//dart 语法 执行main 函数，=> 执行单个函数

//继承 Widget 应用本身也成为一个 widget
//widget 的主要工作是提供一个 build 的方法来描述如何根据较低的 widget 来显示自己
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
      children:[
        new Expanded(child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: new Text(
                'Oeschinen Lake Campground',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Text(
              'Kandersteg, Switzerland',
              style: new TextStyle(
                  color: Colors.grey[500],
              ),
            ),
          ],
        ),
        ),
        new Icon(Icons.star,
          color: Colors.red[500],
        ),
        new Text('41'),
      ],
    ),
    );
    return titleSection;
  }
}
