import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(),
        body: ListView(
//          children: <Widget>[
//
//          ],
          children: List.generate(100, (index) {
            return ListTile(
              leading: Icon(Icons.people),
              trailing: Icon(Icons.delete),
              title: Text("联系人$index"),
            );
          }),
        ),
      ),
    );
  }
}

class NewListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 160,
        itemExtent: 60,
        itemBuilder: (BuildContext ctx, int index) {
          return Text("Hello world $index", style: TextStyle(fontSize: 20));
        });
  }
}


class NewListSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 160,
        itemBuilder: (BuildContext ctx, int index) {
          return Text("Hello world $index", style: TextStyle(fontSize: 20));
        },
        separatorBuilder:(BuildContext ctx, int index) {
          return Divider(
            color: Colors.blue,
            height: 5,
          );
        },
    );

  }
}

