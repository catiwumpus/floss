import 'package:flutter/material.dart';
import './flossExpandedTile.dart';

class FlossList extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: floss.length,
          itemBuilder: (BuildContext context, int index) {
            return floss[index];
          },
        ),
      );
    }

   final List<Widget> floss = [
    FlossExpandedTile("Ecru/Off-White", "Ecru", Color.fromRGBO(255, 247, 230, 1.0)),
    FlossExpandedTile("White", "Blanc", Color.fromRGBO(238, 238, 238, 1.0)),
    FlossExpandedTile("Snow White", "B5200", Color.fromRGBO(252, 252, 255, 1.0)),
    FlossExpandedTile("White", "White", Color.fromRGBO(255, 255, 255, 1.0)),
    FlossExpandedTile("Red-Bright", "150", Color.fromRGBO(207, 0, 83, 1.0)),
    FlossExpandedTile("Pink", "151", Color.fromRGBO(255, 203, 215, 1.0)),
    FlossExpandedTile("Tawny-DK", "152", Color.fromRGBO(255, 161, 161, 1.0)),
    FlossExpandedTile("Lilac", "153", Color.fromRGBO(234, 197, 235, 1.0)),
    FlossExpandedTile("Red-VY DK", "154", Color.fromRGBO(75, 35, 58, 1.0)),
    FlossExpandedTile("Forget-me-not Blue", "155", Color.fromRGBO(151, 116, 182, 1.0)),
    FlossExpandedTile("Blue-MED", "156", Color.fromRGBO(142, 160, 223, 1.0)),
    FlossExpandedTile("Blue-LT", "157", Color.fromRGBO(181, 184, 234, 1.0)),
    FlossExpandedTile("Blue-DK", "158", Color.fromRGBO(57, 48, 104, 1.0))
  ];
}