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

class NewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: NewHomeContent(),
    );
  }
}

class NewHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NewHomeProductItem("Apple","MacBook","https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2656132749,3881506365&fm=26&gp=0.jpg"),
        NewHomeProductItem("Apple","MacBook1","https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2656132749,3881506365&fm=26&gp=0.jpg"),
        NewHomeProductItem("Apple","MacBook2","https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2656132749,3881506365&fm=26&gp=0.jpg"),
      ],
    );
  }
}


//在 Widget 中的变量只能是 final 的
class NewHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  final style = TextStyle(fontSize: 20,color: Colors.green);
  final style1 = TextStyle(fontSize: 25,color: Colors.orange);

  NewHomeProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title,style: style),
        SizedBox(height: 8),
        Text(desc,style: style1),
        SizedBox(height: 8),
        Image.network(imageURL)
      ],
    );
  }
}




