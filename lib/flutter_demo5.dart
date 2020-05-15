import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //对齐
    return new MaterialApp(
      home: Align(
        //（0，0） 为中心点坐标
        //大小为 -1 到 1

        alignment: Alignment(0,0),

        widthFactor: 10,//一个高宽扩大倍数
        heightFactor: 10,
        child: Icon(Icons.pets),
      ),
    );
  }
}


class NewPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(//设置间距
//      padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(vertical: 5.0),
      //... EdgeInsets 可有多种选择
      child: Text(""),
    );
  }
}


class NewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //默认是填充全部
    //有内容的时候是包裹内容
    //
    return Container(
       color: Colors.red,
      width: 200,
      height: 200,
      //作用与子Widget
      alignment: Alignment(-1,-1),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      child: Icon(Icons.pets,size: 30),
      transform: Matrix4.skewY(5),
      decoration: BoxDecoration(
      ),
    );
  }
}

//使用 DevTools 时可以查看Flutter  的 widget 树和属性