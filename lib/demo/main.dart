import 'package:flutter/material.dart';
import 'package:flutterapp/demo/core/viewmodel/MealViewModel.dart';
import 'package:flutterapp/demo/ui/share/SizeFit.dart';
import 'package:flutterapp/demo/ui/share/AppTheme.dart';
import 'package:flutterapp/demo/core/route/router.dart';
import 'package:provider/provider.dart';

main() => runApp(ChangeNotifierProvider(
  create: (ctx) => MealViewModel(),
  child: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeFit.initialize();
    return MaterialApp(
      title: "美食广场",
      theme: AppTheme.norTheme,
      initialRoute: Router.initialRoute,
      routes: Router.routers,
      onGenerateRoute: Router.generateRoute,
      onUnknownRoute: Router.unknownRoute,
    );
  }
}