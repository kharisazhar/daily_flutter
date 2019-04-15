import 'package:flutter/material.dart';

final appBar = new AppBar(
  elevation: 0.0,
  centerTitle: false,
  title: Text(
    'My Plants',
    textAlign: TextAlign.left,
    style: TextStyle(
        color: Colors.black,
        fontFamily: 'Raleway',
        fontSize: 32.0,
        fontWeight: FontWeight.w600),
  ),
  backgroundColor: Colors.white,
  actions: <Widget>[
    IconButton(
      icon: new Icon(Icons.notifications_none, color: Colors.black),
      onPressed: () {},
    ),
    IconButton(
        icon: new Icon(Icons.add, color: Colors.black), onPressed: () {}),
  ],
);
