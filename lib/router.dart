import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewHomePage(),
    );
  }
}

class NewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Navigator.of(context).push();
//      Navigator.of(context).pushNamed();
    return Center(
      child: RaisedButton(
          child: Text("跳转"),
          onPressed: () {
            //返回的数据
            Future future = Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return DetailPage();
            }));
            future.then((value) => print(value));
          }),
    );
  }
}

class DetailPage extends StatelessWidget {
  static String name = "DetailPage";

  //普通方式可以通过 构造器传递参数
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => print("这里加个返回返回方法")),
          //或者使用 WillPorScope
        ),
        body: Center(
          child: RaisedButton(
              child: Text("返回"),
              onPressed: () {
                Navigator.of(context).pop("返回的数据");
              }),
        ),
      ),
    );
  }
}

//命名路由
//

class NamePage extends StatelessWidget {
  //普通方式可以通过 构造器传递参数
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {DetailPage.name: (context) => DetailPage()},
      initialRoute: DetailPage.name,
      onGenerateRoute: (setting) {
        if(setting.name == DetailPage.name) {
          return MaterialPageRoute(
            builder: (context){
              return DetailPage();
            }
          );
        }
      },
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => print("这里加个返回返回方法")),
          //或者使用 WillPorScope
        ),
        body: Center(
          child: RaisedButton(
              child: Text("返回"),
              onPressed: () {
                Navigator.of(context).pop("返回的数据");
//                Navigator.of(context).pushNamed(DetailPage.name);
              }),
        ),
      ),
    );
  }
}
