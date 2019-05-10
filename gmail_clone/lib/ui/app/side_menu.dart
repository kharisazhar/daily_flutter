import 'package:flutter/material.dart';

class AppSideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: false,
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          IconButton(
            icon: Icon(Icons.inbox),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.people_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.star_border),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
