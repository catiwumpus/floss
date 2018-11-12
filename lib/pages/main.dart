import 'package:flutter/material.dart';
import '../widgets/flossList.dart';
import 'package:flutter/rendering.dart';
import './shoppingListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
      routes: {'/shoppingList': (BuildContext context) => ShoppingListPage()},
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 65, 82, 1.0),
        accentColor: Color.fromRGBO(0, 195, 191, 1.0),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Floss'),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/shoppingList');
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: FlossList(),
    );
  }
}
