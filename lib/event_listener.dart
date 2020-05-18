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



//Pointer
//ignorePointer

class NewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: Center(
        child: Listener(
          onPointerDown: (event){

          },
          onPointerCancel: (event){

          },
          onPointerMove: (event){

          },
          onPointerSignal: (event){

          },
          onPointerUp: (event){

          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}


//Gesture
class NewHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){

          },
          onDoubleTap: (){

          },
          onLongPress: (){

          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}


//或者使用 EventBus


