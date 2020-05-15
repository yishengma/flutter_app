
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


//alt + enter 可以将 StatelessWidget 转换为 Statefulwidget
class NewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: NewHomeContent("内容"),
    );
  }
}

class NewHomeContent extends StatefulWidget {
  final String msg;

  NewHomeContent(this.msg) {
    print("执行了 StatefulWidget 的构造方法");
  }

  @override
  _NewHomeContentState createState(){
    print("执行了 StatefulWidget 的createState方法");
    return _NewHomeContentState();
  }
}

class _NewHomeContentState extends State<NewHomeContent> {
  var _counter = 0;


  _NewHomeContentState() {
    print("执行了 _NewHomeContentState 的构造方法");
  }


  @override
  void initState() {
    super.initState();
    print("执行了 _NewHomeContentState 的initState方法");

  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("执行了 _NewHomeContentState 的didChangeDependencies方法");

  }


  @override
  void didUpdateWidget(NewHomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("执行了 _NewHomeContentState 的didUpdateWidget方法");

  }


  @override
  void dispose() {
    super.dispose();
    print("执行了 _NewHomeContentState 的dispose方法");

  }

  @override
  Widget build(BuildContext context) {
    this.widget.msg;//可以获取对应 Widget 的实例
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(child: Text("+"),color: Colors.pink, onPressed: (){
                setState(() {
                  _counter++;
                });
              }),
              RaisedButton(child: Text("+"),color: Colors.pink, onPressed: (){
                _counter++;
                setState(() {
                  //这种方式也可以，表示 状态更新后需要调用 setState
                });
              })
            ],
          ),
          Text("当前计数$_counter")
        ],
      ),
    );
  }
}
