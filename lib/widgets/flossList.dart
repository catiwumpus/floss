import 'package:flutter/material.dart';
import '../models/floss_model.dart';
import '../bloc/floss_bloc.dart';
import '../resources/floss_data.dart';

class FlossList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchFlossList();
    return StreamBuilder(
        stream: bloc.allFloss,
        builder: (context, AsyncSnapshot<Floss> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        });
  }

  Widget buildList(AsyncSnapshot<Floss> snapshot) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: flossList.length,
      itemBuilder: (BuildContext context, int index) {
        print(snapshot.data.floss.length);
        // final floss = snapshot.data.floss[index];
        FlossModel floss = flossList[index];
          return ListTile(
            leading: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(
                      floss.color.red,
                      floss.color.green,
                      floss.color.blue,
                      1),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(color: Colors.black, width: 1.0)),
            ),
            title: Text(floss.number),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text(floss.name),
              Text('Owned: ' + floss.owned.toString())
            ],),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                floss.inCart = true;
                floss.owned = floss.owned + 1;
              },
            ),
            onTap: () {
              _settingModalBottomSheet(context);
            },
          );
          
      },
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child:  Wrap(
              children: <Widget>[
                 ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }
}
