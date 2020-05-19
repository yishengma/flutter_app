import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //一旦设置主题，某些 widget ，就会直接使用主题的样式
    return MaterialApp(
      title: "Flutter Demo",

      //全局主题
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //使用的是 MaterialColor，包含 primaryColor 和 accentColor
        primaryColor: Colors.blue,
        //导航和 TabBar 的颜色
        accentColor: Colors.blue,
        splashColor: Colors.transparent,
        //某些 Widget 的主题
        buttonTheme: ButtonThemeData(
          height: 25,
          minWidth: 10,
          buttonColor: Colors.yellow,
        ),
        //card
        cardTheme: CardTheme(
          color: Colors.greenAccent,
          elevation: 10,
        ),
        textTheme: TextTheme(
          body1: TextStyle(), //默认的文本
        ),
        brightness: Brightness.light, //亮度
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Text("Hello"),
            RaisedButton(),
            Card(
              child: Text("Hellow"),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("我的")),
        ]),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //局部主题,全部覆盖
    return Theme(data: ThemeData(), child: Scaffold());
  }
}

class DetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //局部主题，只覆盖 局部属性
    return Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.purple,
        ),
        child: Scaffold(
          appBar: AppBar(),
          body: Text(""),
          //FloatingActionButton必须这样使用
          floatingActionButton: Theme(
            data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context)
                    .colorScheme
                    .copyWith(secondary: Colors.pink)),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.pets),
            ),
          ),
        ));
  }
}
