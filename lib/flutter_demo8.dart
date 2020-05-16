import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3
          ),
          children: List.generate(100, (index) {
            return Container(
              color: Color.fromARGB(255, 0,0,0),
            );
          }),
        )
      ),
    );
  }
}