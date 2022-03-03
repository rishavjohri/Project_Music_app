import 'dart:async';
import 'package:flutter/material.dart';
import "./Views/splash.dart";
import './size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: musicSplash(),
    );
  }
}
