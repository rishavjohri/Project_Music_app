import 'dart:math';

import 'package:flutter/material.dart';
import 'Homepage.dart';

class musicPlayer extends StatefulWidget {
  const musicPlayer({Key? key}) : super(key: key);

  @override
  _musicPlayerState createState() => _musicPlayerState();
}

class _musicPlayerState extends State<musicPlayer> {
  void backToHome() {
    setState(() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Color(0xff0d47a1),
              // Color(0xff0d47a1),
              // Colors.grey,
              // Colors.black54,
              // Color(Colors.blue)
              Colors.black,
              Colors.deepPurple,
            ],
          )),
        ),
        leading: IconButton(
          onPressed: () {
            backToHome();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          'Freddie Byrd',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_down_outlined),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.black54
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Color(0xff0d47a1),
              // Color(0xff0d47a1),
              // Colors.grey,
              // Colors.black54,
              // Color(Colors.blue)
              Colors.black,
              Colors.deepPurple,
            ],
          ),
        ),
        child: Container(
          width: 500,
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Image.asset(
                "assets/images/pic_5.png",
                scale: .6,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "MC Lyte's",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Fredoka"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.music_video),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Song: Party Time",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Fredoka'),
                    ),
                  ],
                ),
              ),
              Slider(
                activeColor: Colors.deepPurple,
                thumbColor: Colors.deepPurple,
                value: 40,
                max: 100,
                min: 10,
                divisions: 5,
                label: 40.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    value = 100;
                  });
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_library_music_rounded,
                          color: Colors.red, size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.pause, color: Colors.red, size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_fill,
                          color: Colors.red, size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.skip_next_outlined,
                          color: Colors.red, size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shuffle, color: Colors.red, size: 30),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        ),
                        child: Text("Bring To Light"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        ),
                        child: Text("Vote For This"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// body: Icon(Icons.baby_changing_station),
// );
// Icon(Icons.arrow_back_ios),
// fontFamily:"Fredoka-Regular"
