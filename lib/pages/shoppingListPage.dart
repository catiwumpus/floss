import 'package:flutter/material.dart';
import '../libraries/data.dart' as data;

class ShoppingListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ShoppingListPageState();
  }
}

class ShoppingListPageState extends State<ShoppingListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data.shoppingList.length,
            itemBuilder: (BuildContext context, int shoppingIndex) {
              return data.shoppingList[shoppingIndex];
            },
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data.purchasedList.length,
            itemBuilder: (BuildContext context, int purchasedIndex) {
              return data.purchasedList[purchasedIndex];
            },
          ),
        ],
      ),
    );
  }
}
