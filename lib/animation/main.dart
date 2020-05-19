import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

//Animation 抽象类
//
//
// AnimationController
// vsync 同步信号
//  forward 向前执行动画
//  reverse 反转执行动画
//
//
//CurvedAnimation
//作用 设置动画的速率（速度曲线）
//
//Tween
//设置动画执行的 value 范围
//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: AnimationDemo2(),
      ),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Center(
//          child:
//              Icon(Icons.favorite, color: Colors.red, size: controller.value),
//        ),
        AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return Icon(Icons.favorite,
                  color: Colors.red, size: controller.value);
            }),
        RaisedButton(onPressed: () {
          controller.forward();
        })
      ],
    );
  }

  AnimationController controller;
  Animation animation;
  Animation tween;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        lowerBound: 0.0,
        upperBound: 1.0);
    controller.addListener(() {
      setState(() {});
      animation =
          CurvedAnimation(parent: controller, curve: Curves.elasticInOut);
      tween = Tween(begin: 50.0, end: 150.0).animate(animation);

      controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print("动画完成");
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

//优化 避免多个 Widget 重复构建
//1.使用 AnimatedWidget
//缺点：需要构建类，如果build内还有 子 widget ，还是会重复构建

class AnimatedIcon extends AnimatedWidget {
  @override
  Widget build(BuildContext context) {}
}
//2.使用 AnimatedBuilder
//

//交织动画

class AnimationDemo2 extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState2 extends State<AnimationDemo2>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Opacity(
            opacity: opacity_tween.value,
            child: Transform(
              transform: Matrix4.rotationZ(pi / 4),
              alignment: Alignment.center,
              child: Container(width: size_tween.value, height: size_tween.value, color: color_tween.value),
            )),
        RaisedButton(onPressed: () {
          controller.forward();
        })
      ],
    );
  }

  AnimationController controller;
  Animation animation;
  Animation size_tween;

  Animation color_tween;

  Animation opacity_tween;

  Animation radian_tween;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        lowerBound: 0.0,
        upperBound: 1.0);
    controller.addListener(() {
      setState(() {});
      animation =
          CurvedAnimation(parent: controller, curve: Curves.elasticInOut);
      size_tween = Tween(begin: 50.0, end: 150.0).animate(animation);
      color_tween =
          Tween(begin: Colors.orange, end: Colors.purple).animate(animation);
      opacity_tween = Tween(begin: 0.0, end: 1.0).animate(animation);
      radian_tween = Tween(begin: 0.0, end: 2.0 * pi).animate(animation);
      controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print("动画完成");
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}



//Hero
//转场动画
//
