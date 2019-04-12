import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => index == 0
          ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.17,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  image: new NetworkImage(
                                      "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg"),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            "kharis_azhar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      new IconButton(
                          icon: Icon(Icons.more_vert), onPressed: null)
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.asset(
                    "assets/images/woman.jpg",
                    fit: BoxFit.cover,
                    height: 300.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.heart,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
