import 'package:flutter/material.dart';

class MyThemeData{
  static const Color primaryColor = Color.fromARGB(255, 40, 42, 40);
  static const Color yellowColor = Color.fromARGB(255, 255, 187, 59);


  static const Color darkScaffoldBackground =
  Color.fromARGB(255, 6, 14, 30);
  static final ThemeData darkTheme =
  ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: darkScaffoldBackground,


  );
}