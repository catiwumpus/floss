import 'package:flutter/material.dart';
import '../widgets/shoppingListTile.dart';

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: ShoppingListTile("Bobby", "1822", Color.fromRGBO(255, 176, 45, 1.0)),
    );
  }
}
