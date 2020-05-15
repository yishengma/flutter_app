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