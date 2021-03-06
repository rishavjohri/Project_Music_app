import 'package:flutter/material.dart';
import 'dart:async';
import 'package:music_app/size.dart';
import './Homepage.dart';

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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: AppMargin.m14),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/gif_3.gif'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: AppMargin.m12,
              ),
              child: Text(
                "@ Powered By Walking Tree",
                style: TextStyle(color: Colors.brown),
                // textAlign: TextAlign.end,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
