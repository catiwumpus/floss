import 'package:flutter/material.dart';

class FlossExpandedTile extends StatelessWidget {

  String _number = "";
  String _name = "";
  int _quantity = 0;

  FlossExpandedTile(this._name, this._number, this._quantity);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
                    border: new Border(
                        bottom:
                            new BorderSide(width: 1.0, color: Color.fromRGBO(0, 0, 0, .3),))),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              _number,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              _name,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Owned: " + _quantity.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
            color: Colors.red,
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
          ),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                    border: new Border(
                        right:
                            new BorderSide(width: 1.0, color: Colors.black))),
                child: Row(
                  children: <Widget>[
                    Text('Change Quantity:'),
                    IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('Add to Shopping List:'),
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
