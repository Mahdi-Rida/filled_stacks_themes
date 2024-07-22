import 'package:flutter/material.dart';

List<ThemeData> getThemes() {
  return [
    ThemeData(
        scaffoldBackgroundColor: Colors.blue, primaryColor: Colors.yellow),
    ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.green,
    ),
    ThemeData(
      scaffoldBackgroundColor: Colors.purple,
      primaryColor: Colors.green,
    ),
    ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.red,
    ),
    ThemeData(
      scaffoldBackgroundColor: Colors.red,
      primaryColor: Colors.blue,
    ),
  ];
}
