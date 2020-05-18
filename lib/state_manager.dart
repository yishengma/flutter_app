//短时状态
//Ephemeral state
//只需要在自己的 widget 中使用
//一般使用 statefulwidget 的 state 管理即可

//应用状态
//App state
//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());
//InheritedWidget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterWidget(
      widget: Column(
        children: <Widget>[ShowData01(), ShowData02()],
      ),
    );
  }
}

class ShowData01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Text("当前计数${CounterWidget
          .of(context)
          .counter}"),
    );
  }
}

class ShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Text("当前计数${CounterWidget
          .of(context)
          .counter}"),
    );
  }
}

class CounterWidget extends InheritedWidget {
  final int counter = 100;

  CounterWidget({Widget widget}) : super(child: widget);

  static CounterWidget of(BuildContext context) {
    //沿着 Element 树寻找最近的 CounterWidget
    return context.dependOnInheritedWidgetOfExactType();
  }

  //如果返回为 true
  //执行 InheritedWidget 的 widget 的state 得的 didchange
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}


//Provide 可以状态管理
//1.创建自己共享的数据
//2.在应用程序顶层使用 ChangeNotify
//》Provider.of  当 Provider 中的数据发生改变时 Provider.of 所在的 widget 整个 build 方法都会重新构建
//》Consumer (相对推荐)，当 Provider 中的数据发生改变，重新执行 Consumer 的 builder
//》Selector selector 的方法 shouldBuilder 返回需不需要重新构建
//还有 Consumer2 3 4 ...

void test() {
  runApp(MultiProvider(
    providers: [
//      ChangeNotifierProvider(builder: ),
//      ChangeNotifierProvider(builder: ),
//      ChangeNotifierProvider(builder: ),
    ],
  ));
}
