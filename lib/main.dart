import 'package:flutter/material.dart';
import 'package:ui_demo/ProfilePage.dart';
import 'package:ui_demo/login.dart';
import 'package:ui_demo/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
