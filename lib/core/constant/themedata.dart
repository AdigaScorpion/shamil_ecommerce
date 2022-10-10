import 'package:flutter/material.dart';
import 'color.dart';

ThemeData englishTheme = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
      bodyText1: TextStyle(
          height: 2, color: Appcolor.grey, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
        height: 1,
        color: Appcolor.grey,
        fontSize: 12,
      )),
  primarySwatch: Colors.blue,
);

ThemeData arabicTheme = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
      bodyText1: TextStyle(
          height: 2, color: Appcolor.grey, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
        height: 1,
        color: Appcolor.grey,
        fontSize: 12,
      )),
  primarySwatch: Colors.blue,
);
