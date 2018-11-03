import 'package:flutter/material.dart';
import './widgets/flossList.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 65, 82, 1.0),
          accentColor: Color.fromRGBO(0, 195, 191, 1.0)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floss'),
          backgroundColor: Color.fromRGBO(0, 195, 191, 1.0),
          elevation: 2.0,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
            ),
          ],
        ),
        body: FlossList(),
      ),
    );
  }
}
