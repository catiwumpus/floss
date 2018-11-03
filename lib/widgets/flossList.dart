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
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return FlossExpandedTile();
          },
        ),
      );
    }
}