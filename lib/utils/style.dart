

import 'package:flutter/material.dart';

class MyStyle{
  static Color mainColor= Colors.orangeAccent;
  static TextStyle appBarTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  );
  static TextStyle textH1Style=  const TextStyle(
    color: Colors.black,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textH2Style= textH1Style.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static double iconSize= 50.0;
  static TextStyle textButton =const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static ButtonStyle myButtonStyle= ElevatedButton.styleFrom(
    backgroundColor: mainColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
  );
}