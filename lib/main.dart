import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


main() {
  runApp(Center(//将 Text 居中显示
    child: Text(
      "Hello world",
      textDirection: TextDirection.ltr,//dart 需要指定方向
      style: TextStyle(
          fontSize: 30,
          color: Colors.orange
      ),
    ),
  )
  );
}