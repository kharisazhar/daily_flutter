import 'package:flutter/material.dart';

final bottomNav = new Container(
  color: Colors.white,
  height: 50.0,
  child: new BottomAppBar(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new IconButton(
            icon: new Icon(const IconData(0xe900, fontFamily: 'icomoon'),
                color: Colors.black),
            onPressed: () {}),
        new IconButton(icon: new Icon(Icons.favorite_border), onPressed: () {}),
        new IconButton(icon: Icon(Icons.person_outline), onPressed: () {})
      ],
    ),
  ),
);
