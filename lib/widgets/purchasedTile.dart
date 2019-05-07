import 'package:flutter/material.dart';
import '../libraries/data.dart' as data;

class PurchasedTile extends StatefulWidget {
  final String _name;
  final String _number;
  final Color _color;

  PurchasedTile(this._name, this._number, this._color);

  @override
  State<StatefulWidget> createState() {
    return PurchasedTileState();
  }
}

class PurchasedTileState extends State<PurchasedTile> {
  bool _value = true;
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
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
         int _index = data.shoppingList.indexOf(widget);
          _value = value;
        data.purchasedList.removeAt(_index);
        data.shoppingList.add(widget);
        });
      },
      selected: _selected,
    );
  }
}