import 'dart:async';

import 'package:flutter/material.dart';
import './Homepage.dart';
import './size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: musicSplash(),
    );
  }
}

class musicSplash extends StatefulWidget {
  const musicSplash({Key? key}) : super(key: key);

  @override
  _musicSplashState createState() => _musicSplashState();
}

class _musicSplashState extends State<musicSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: AppMargin.m14) ,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/gif_3.gif'),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only( top: AppMargin.m12, ),
              child: Text(
                "@ Powered By Walking Tree",
                style: TextStyle(color: Colors.brown),
                // textAlign: TextAlign.end,
              )),
        ],
      ),
    );
  }
}
