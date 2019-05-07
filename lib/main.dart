import 'package:floss/models/floss_model.dart' as prefix0;
import 'package:flutter/material.dart';
import './widgets/flossList.dart';
import 'package:flutter/rendering.dart';
import './pages/shoppingListPage.dart';

void main() {
  runApp(FlossApp());
}

class FlossApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
      routes: {
        '/shoppingList': (BuildContext context) =>
            ShoppingListPage(),
        '/flossList': (BuildContext context) => FlossList()
      },
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Floss'),
        centerTitle: true,
        backgroundColor: Theme.of(context).accentColor,
        elevation: 2.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/shoppingList');
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: FlossList(),
    );
  }
}
