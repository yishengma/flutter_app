import 'package:flutter/material.dart';
import 'package:flutterapp/demo/core/model/CategoryModel.dart';
import 'package:flutterapp/demo/core/service/json_parse.dart';
import 'package:flutterapp/demo/ui/share/SizeFit.dart';
import 'package:flutterapp/demo/ui/pages/mealScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<CategoryModel> _category = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(20.0.px),
        itemCount: _category.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0.px,
            mainAxisSpacing: 20.0.px,
            childAspectRatio: 1.5),
        itemBuilder: (ctx, index) {
          final bgColor = _category[index].cColor;
          return GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    color: _category[index].cColor,
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [bgColor.withOpacity(.5), bgColor])),
                alignment: Alignment.center,
                child: Text(_category[index].title)),
            onTap: () {
              Navigator.of(context).pushNamed(MealScreen.routeName,arguments: _category);
            },
          );
        });
  }

  @override
  void initState() {
    super.initState();
    //如果是 statelesswidget
    //使用 FutureBuilder
    JsonParse.getCategoryData().then((value) => _category = value);
  }
}
