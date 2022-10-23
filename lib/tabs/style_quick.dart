import 'package:flutter/material.dart';

class AppColorsTheme {
  Color primarySwatch;
  Color titleBarGradientStartColor;
  Color titleBarGradientEndColor;
  Color textColor;
  Color secondaryGradientColor;

  AppColorsTheme({required this.primarySwatch, required this.titleBarGradientStartColor, required this.titleBarGradientEndColor, required this.textColor, required this.secondaryGradientColor});

  static final AppColorsTheme myTheme = AppColorsTheme(
    primarySwatch: Colors.blue,
    titleBarGradientStartColor : Colors.blue,
    titleBarGradientEndColor: Colors.tealAccent,
    textColor: Colors.black,
    secondaryGradientColor: Colors.white
  );
  
}
