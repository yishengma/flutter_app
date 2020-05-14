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

//Widget 是 @immutable注解，即不可变

class NewCenterBody extends StatefulWidget {

  @override
  State createState() {
    return NewContentBodyState();
  }
}

class NewContentBodyState extends State<NewCenterBody> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
                value: flag,
                onChanged: (value) {
                  setState(() {
                    flag = value;
                  });
                }),
            Text(
              "Hello world",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange
              ),
            ),
          ],
        )
    );
  }
}



