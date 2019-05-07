import 'package:flutter/material.dart';
import '../libraries/data.dart' as data;
import '../widgets/shoppingListTile.dart';

class FlossExpandedTile extends StatefulWidget {
  final String _number;
  final String _name;
  final Color _color;

  FlossExpandedTile(this._name, this._number, this._color);

  @override
  State<StatefulWidget> createState() {
    return _FlossExpandedTileState();
  }
}

class _FlossExpandedTileState extends State<FlossExpandedTile> {
  int _quantity = 0;

  void _addToShoppingList(Widget shoppingListItem) {
    data.shoppingList.add(shoppingListItem);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          border: new Border(
              bottom: new BorderSide(
        width: 1.0,
        color: Color.fromRGBO(0, 0, 0, .3),
      ))),
      child: ExpansionTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text(
            widget._number,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget._name,
                style: TextStyle(color: Colors.blueGrey),
              ),
              Text(
                "Owned: " + _quantity.toString(),
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ]),
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              color: widget._color,
              borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
              border: new Border.all(color: Colors.black, width: 1.0)),
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
                    Text('Add to Shopping List:'),
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {
                        _addToShoppingList(ShoppingListTile(widget._name, widget._number, widget._color));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text('Change Quantity:'),
                    IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        setState(() {
                          if (_quantity > 0) {
                            _quantity -= 1;
                          } else {
                            _quantity = 0;
                          }
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {
                        setState(() {
                          _quantity += 1;
                        });
                      },
                    )
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
