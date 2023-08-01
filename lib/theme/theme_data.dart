import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors_const.dart';

ThemeData themeData() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.black)),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: kTextColor),
      bodyMedium: TextStyle(color: kTextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
