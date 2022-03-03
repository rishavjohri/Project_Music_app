// To parse this JSON data, do
//
//     final music = musicFromJson(jsonString);

import 'dart:convert';

Music musicFromJson(String str) => Music.fromJson(json.decode(str));

String musicToJson(Music data) => json.encode(data.toJson());

class Music {
  Music({
   required this.music,
  });

  List<MusicElement> music;

  factory Music.fromJson(Map<String, dynamic> json) => Music(
    music: List<MusicElement>.from(json["music"].map((x) => MusicElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "music": List<dynamic>.from(music.map((x) => x.toJson())),
  };
}

class MusicElement {
  MusicElement({
   required this.imageLink,
   required this.songName,
   required this.description,
  });

  String imageLink;
  String songName;
  String description;

  factory MusicElement.fromJson(Map<String, dynamic> json) => MusicElement(
    imageLink: json["image_link"],
    songName: json["Song_Name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "image_link": imageLink,
    "Song_Name": songName,
    "description": description,
  };
}
