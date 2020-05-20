import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/demo/core/model/CategoryModel.dart';

//https://javiercbk.github.io/json_to_dart/
class JsonParse {
  static Future<List<CategoryModel>> getCategoryData() async{
    final jsonStr = await rootBundle.loadString("assets/json/category.json");

    final result = json.decode(jsonStr);
    final resultList = result["category"];
    List<CategoryModel> categories = [];
    for(var json in resultList) {
      categories.add(CategoryModel.fromJson(json));
    }
    return categories;
  }


}

