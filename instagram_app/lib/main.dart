import 'package:flutter/material.dart';
import 'package:instagram_app/insta_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              title:
                  TextStyle(color: Colors.black, fontFamily: "Proxima-Nova")),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: new InstaHome(),
    );
  }
}
