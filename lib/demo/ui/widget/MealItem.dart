import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterapp/demo/core/model/MealModel.dart';
import 'package:flutterapp/demo/ui/share/SizeFit.dart';
import 'package:flutterapp/demo/ui/pages/detail_screen.dart';

class MealItem extends StatelessWidget {
  final MealModel _meal;

  MealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.0.px),
        elevation: 5,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0.px)),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo()
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(DetailScreen.routeName,arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0.px),
            topRight: Radius.circular(12.0.px),
          ),
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 25.0.px,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 200.0.px,
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12.0.px)),
          child: Text(
            _meal.title,
            style: Theme.of(context)
                .textTheme
                .display3
                .copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
        padding: EdgeInsets.all(16.0.px),
        child: Row(
          children: <Widget>[
            OperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
            OperationItem(Icon(Icons.restaurant), "${_meal.complexity}难道"),
            OperationItem(Icon(Icons.favorite), "未收藏"),
          ],
        ));
  }
}

class OperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;

  OperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[_icon,SizedBox(width: 3.0.px,), Text(_title)],
    );
  }
}
