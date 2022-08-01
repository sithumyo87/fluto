

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/seven.dart';
// import 'package:flutter_application_1/pages/test.dart';


import 'pages/Two.dart';
import 'pages/One.dart';
import 'pages/Three.dart';
import 'pages/home.dart';
import 'pages/Four.dart';
import 'pages/Five.dart';
import 'pages/Six.dart';
import 'pages/seven.dart';
import 'pages/eight.dart';
// import 'pages/test.dart';






var data  = "HelLo Flutter Developer";

var myText = Text(data,
    style: TextStyle(
      color: Colors.white,
      backgroundColor:Colors.red,
      fontStyle: FontStyle.italic)
    );

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      // home: Home(),
      routes: {
        '/home':(context) => Home(),
        '/about':(context) => One(),
        '/contact':(context) => Two(),
        '/three':(context) => Three(),
        '/fourth':(context) => Fouth(),
        '/five':(context) => Five(),
        '/six':(context) => Six(),
        '/':(context) => seven(),
        '/eight':(context) => eight(),
        // '/':(context) => test(),
      
      },
      // ThemeData(colorScheme: ColorScheme(
      //   primary: Colors.black,
      //   primaryVariant: Colors.red,
      // ),
       
      // ),
      theme: ThemeData(primarySwatch: Colors.blueGrey,
      fontFamily: "English",
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 20)
      )
      ),
    ),
  );
}





