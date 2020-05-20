
//数据共享 MealModel


import 'package:flutter/material.dart';
import 'package:flutterapp/demo/core/model/MealModel.dart';
import 'package:flutterapp/demo/core/service/MealRequest.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];
  List<MealModel> get meals {
    return _meals;
  }
  MealViewModel(){
   MealRequest.getMealData().then((value) {
     _meals = value;
     notifyListeners();
   });
  }
}