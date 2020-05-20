import 'package:flutter/material.dart';
import 'package:flutterapp/demo/core/model/CategoryModel.dart';
import 'package:flutterapp/demo/core/model/MealModel.dart';
import 'package:flutterapp/demo/core/viewmodel/MealViewModel.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class MealScreen extends StatelessWidget {
  static const String routeName = "MealScreen";

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as CategoryModel;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MealContainer(),
      ),
    );
  }
}

//class MealContainer extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final category = ModalRoute.of(context).settings.arguments as CategoryModel;
//    return Consumer<MealViewModel>(builder: (ctx, mealVm, child) {
//      final meals = mealVm.meals[0].meal.where((element) => element.categories.contains(category.id));
//      return ListView.builder(
//          itemCount: mealVm.meals[0].meal.length,
//          itemBuilder: (ctx,index){
//            return ListTile();
//      });
//    });
//  }
//}

class MealContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as CategoryModel;
    return Selector<MealViewModel, List<MealModel>>(
        builder: (ctx, meals, child) {
      return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text(meals[index].title),
            );
          });
    }, shouldRebuild: (pre, next) {
      return ListEquality().equals(pre, next);
    }, selector: (ctx, mealVm) {
      return mealVm.meals.where((element) {
        return element.categories.contains(category.id);
      }).toList();
    });
  }
}
