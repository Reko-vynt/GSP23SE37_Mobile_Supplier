import 'package:flutter/material.dart';

class MySize {
  static double heightScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double widthScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
