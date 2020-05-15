import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //对齐
    return new MaterialApp(
      home:NewRow(),
    );
  }
}

//Flex 布局
//
class NewFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {}
}

class NewColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Row 是主轴是竖的，交叉轴是横的
    //主轴   mainAxisAlignment
    //交叉轴 crossAxisAlignment
  }
}

class NewRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Row 是主轴是横的，交叉轴是竖的
    //主轴   mainAxisAlignment
    //交叉轴 crossAxisAlignment

    //Row
    //-水平方向尽可能占据比较大的空间
    //-垂直方向包裹内容

    return Row(
      //MainAxisAlignment
      //start 主轴的开始位置摆放元素
      //end 主轴的结束位置挨个元素
      //center 主轴的中心点对齐
      //spaceBetween 左右两边间距为0 ，
      //spaceAround
      //spaceEvenly

      //crossAxisAlignment
      //start 交叉轴的开始位置摆放元素
      //end 交叉轴的结束位置挨个元素
      //center 交叉轴的中心点对齐
      //spaceBetween 左右两边间距为0 ，
      //spaceAround
      //spaceEvenly
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: 80, height: 60, color: Colors.red),
        Container(width: 80, height: 60, color: Colors.green),
        Container(width: 80, height: 60, color: Colors.blue),
      ],
    );
  }
}
