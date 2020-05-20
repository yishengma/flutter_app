import 'package:flutter/material.dart';

class AppTheme {
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  static final Color norTextColors = Colors.pink;

  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.pink,
      textTheme: TextTheme(

          display1: TextStyle(fontSize: smallFontSize),
          display2: TextStyle(fontSize: normalFontSize),
          display3: TextStyle(fontSize: largeFontSize),
      )
  );

  static final Color darkTextColors = Colors.green;

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      body1: TextStyle(fontSize: normalFontSize, color: norTextColors),
    ),
  );
}
