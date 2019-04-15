import 'package:flutter/material.dart';
import 'package:plants_app/item_card/item_card.dart';

final card = new Container(
  padding: const EdgeInsets.all(12.0),
  color: Colors.white,
  child: new GridView.count(
    crossAxisCount: 2,
    childAspectRatio: (1 / 1.6),
    children: <Widget>[
      item_card_samantha,
      item_card_angelica,
      item_card_jennifer,
      item_card_sebastian,
      item_card_ellen,
      item_card_nagy,
      item_card_scott
    ],
  ),
);
