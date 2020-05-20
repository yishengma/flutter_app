import 'package:flutterapp/demo/core/service/httpclient.dart';
import 'package:flutterapp/demo/core/model/MealModel.dart';

class MealRequest {
  static Future<List<MealModel>> getMealData() async{
    final result =  await HttpRequest.request("http://123.207.32.32:8001/api/meal");
    final mealArray = result["meal"];
    List<MealModel> meals = [];
    for(var json in mealArray) {
      meals.add(MealModel.fromJson(json));
    }
    return meals;
  }
}
