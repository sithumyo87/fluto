
import 'dart:convert';

// import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/RandomUser.dart';
import 'package:flutter_application_1/models/Post.dart';
import 'package:flutter_application_1/components/components.dart';
import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:app/models/Post.dart';
class Api{
  static Future<List<Post>> getAllPost() async{
    print("Hello");
    var responeData = await http.get(Uri.parse(Components.POST_URL));
    var responeBody = jsonDecode(responeData.body);
    print(responeBody);
    List lisy = responeBody as List;
    List<Post> postList = lisy.map((post) => Post.from(post)).toList();
    return postList;
  }


  static Future<List<RandomUser>> getAllUser() async{
    var responeBody = await http.get(Uri.parse(Components.USER_URL));
    var responeData = jsonDecode(responeBody.body);
    // print(responeData);
    List lisy = responeData['results'] as List;
    List<RandomUser> randomuser = lisy.map((e) => RandomUser.from(e)).toList();
    randomuser.forEach((element) {
      print("User title is ${element.name.first}");
    });
    return randomuser;
  }
}