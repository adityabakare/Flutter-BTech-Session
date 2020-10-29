import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            home: Login(),
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

// TODO 1: Make sure firebase is initialised
