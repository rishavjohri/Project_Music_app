import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:music_app/model/musicInfo.dart';
import "package:music_app/constant/string.dart";

// ignore: camel_case_types
class API_Manager {
  Future<Music> getMusic() async {
    var musicModel;

    try {
      var response = await http.get(Uri.parse(Strings.music));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        // print(jsonString);
        var jsonMap = json.decode(jsonString);
        // print(jsonMap);
        musicModel = Music.fromJson(jsonMap);
        // print(_musicModel);
      }
    } catch (Exception) {
      return musicModel;
    }

    return musicModel;
  }
}
