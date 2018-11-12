import 'package:flutter/material.dart';

class ShoppingListTile extends StatefulWidget {
  final String _name;
  final String _number;
  final Color _color;

  ShoppingListTile(this._name, this._number, this._color);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShoppingListTileState();
  }
}

class ShoppingListTileState extends State<ShoppingListTile> {
  bool _value = false;
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
      title: Text(
        widget._number,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      subtitle: Text(
        widget._name,
        style: TextStyle(color: Colors.blueGrey),
      ),
      secondary: Container(
        width: 50.0,
        height: 50.0,
        decoration: new BoxDecoration(
            color: widget._color,
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            border: new Border.all(color: Colors.black, width: 1.0)),
      ),
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
      selected: _selected,
    );
  }
}
