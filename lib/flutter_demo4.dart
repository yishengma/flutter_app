import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: <Widget>[
              ButtonTheme(
                minWidth: 30,
                height: 30,
                child: FlatButton(onPressed: (){}),
              )
            ],
          ),
        ),
    );
  }
}


class NewImageHolder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //图片缓存
    //Flutter 或记录图片缓存的高度和宽度
    //默认可以缓存 1000 图片，最大为 100 MB
    return FadeInImage(
      fadeOutDuration: Duration(microseconds: 1),
      placeholder: AssetImage(""),
      image: NetworkImage(""),
    );
  }
}


class NewIconHolder extends StatelessWidget {

  //Icon 字体图标和图片图标
  //字体图标矢量图
  //字体图标可以设置颜色
  //占空间小
  @override
  Widget build(BuildContext context) {
//    return Icon(Icons.pets,size: 300,color: Colors.purple);
//    return Icon(IconData(0xe91d, fontFamily: 'MaterialIcons'), size: 300);

    //0xe91d -> unicode 编码
    return Text(
        "\ue91d", style: TextStyle(fontSize: 100, color: Colors.orange,fontFamily: 'MaterialIcons'));
  }
}