import 'package:flutter/material.dart';
import './flossExpandedTile.dart';

class FlossList extends StatelessWidget {
  List<Widget> floss = [
    FlossExpandedTile("Red-Bright", "150", 2),
    FlossExpandedTile("Blue", "212", 3)
  ];
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
}