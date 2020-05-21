import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("原生混合"),
      ),
      body: NewHomeContent(),
    );
  }
}


class NewHomeContent extends StatefulWidget {
  @override
  _NewHomeContentState createState() => _NewHomeContentState();
}

class _NewHomeContentState extends State<NewHomeContent> {
  File _imageFile;
  int _level;
  static const platform = const MethodChannel("battery");
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: <Widget>[
          Text("选择照片"),
      RaisedButton(
          child: Text("选择照片"),
          onPressed: _pickImage
      ),
      _imageFile == null ? Text("请选择一张照片") : Image.file(_imageFile),
      ],
    ),);
  }

  void _pickImage() async {
    File file = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = file;
    });
    getBatteryInfo();
  }

  void getBatteryInfo() async {
    final result = await platform.invokeMethod("getBatteryInfo");
    setState(() {
      _level = result;
    });
  }
}
