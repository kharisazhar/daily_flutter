import 'package:flutter/material.dart';
import 'package:plants_app/app_bar.dart';
import 'package:plants_app/bottom_nav.dart';
import 'package:plants_app/card.dart';

class PlantsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomPadding: false,
      body: card,
      bottomNavigationBar: bottomNav
    );
  }
}
