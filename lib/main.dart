import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "NanumGothic",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 50,
          ),
          headline2: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            fontSize: 30,
          ),
          bodyText2: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
