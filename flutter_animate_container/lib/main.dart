import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimateContainerAppState createState() => _AnimateContainerAppState();
}

class _AnimateContainerAppState extends State<AnimatedContainerApp> {

//  inital default value
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Demo'),
        ),
        body: Center(

          //animated container
          child: AnimatedContainer(
            // Use the properties stored in the State class.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadiusGeometry,
            ),
            // Define how long the animation should take.
            duration: Duration(seconds: 1),
            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn,
          ),
        ),

        //floating action button
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.play_arrow),
            onPressed: () {
              setState(() {
                final random = Random();
                //set new width and height
                _width = random.nextInt(300).toDouble();
                _height = random.nextInt(300).toDouble();

                //set new random color
                _color = Color.fromRGBO(random.nextInt(256),
                    random.nextInt(256), random.nextInt(256), 1);

                //set new border radius
                _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble());
              });
            }),
      ),
    );
  }
}
