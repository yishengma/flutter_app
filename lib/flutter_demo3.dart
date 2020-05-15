import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: NewAssetsImageBodyState(),
      ),
    );
  }
}

//alt+ctrl+b 查看实现类
class NewHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Text本质是使用 RichText 一个 RenderWidget  ，可渲染的 Widget
//    return Text(
//      "App Text ",
//      maxLines: 3,
//      textScaleFactor: 1.5,
//      textAlign: TextAlign.center,
//      overflow: TextOverflow.ellipsis,
//      style: TextStyle(
//        fontSize: 20,
//        color: Colors.purple
//      )
//    );
    //富文本
    return Text.rich(TextSpan(children: [
      TextSpan(text: "", style: TextStyle(fontSize: 12)),
      TextSpan(text: "", style: TextStyle(fontSize: 12)),
      TextSpan(text: "", style: TextStyle(fontSize: 12))
    ]));
  }
}

class NewButtonBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: () => print(""), child: Text("RaiseButton")),
        FlatButton(
          onPressed: () => print(""),
          child: Text("FlatButton"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        OutlineButton(onPressed: () => print(""), child: Text("OutlineButton")),
        FloatingActionButton(
            onPressed: () => print(""), child: Text("FloatingActionButton")),
      ],
    );
  }
}

class NewImageBody extends StatefulWidget {
  @override
  _NewImageBodyState createState() => _NewImageBodyState();
}

class _NewImageBodyState extends State<NewImageBody> {
  final String imageURL = "";

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageURL),
      width: 200,
      height: 200,
      fit: BoxFit.cover,
      alignment: Alignment(0, 0),
    );
  }
}

class NewAssetsImageBodyState extends StatelessWidget {
  final String imageURL = "";

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/test.jpg"),
      width: 200,
      height: 200,
      fit: BoxFit.cover,
      alignment: Alignment(0, 0),
    );
  }
}