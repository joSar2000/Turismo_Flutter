import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:turismo_flutter/model/data_turismo6.dart';

class ListViewTurism extends StatefulWidget {

  @override
  _ListViewTurismState createState() => _ListViewTurismState();
}

final dataReference = FirebaseDatabase.instance.reference().child('data_turismo6');

class _ListViewTurismState extends State<ListViewTurism> {

  List<ViewTURISM> items;
  StreamSubscription<Event> _onDataAddTurism;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = new List();
    _onDataAddTurism = dataReference.onChildAdded.listen((_onDataAddTurism));

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _onDataAddTurism.cancel();
  }

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: "Turismo",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Estado de conservación e integración a atractivo/entorno',
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          actions: <Widget> [
            IconButton(
              onPressed: () { },
              icon: Icon(Icons.add_outlined),
              tooltip: "Ver Más",
              alignment: Alignment.center,
            )
          ],
        ),
        body: Center(
            child: ListView.builder(
              itemCount: items.length,
              padding: EdgeInsets.only(top: 12.0),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget> [
                    Divider(height: 7.0,),
                    Row(
                      children: <Widget> [
                        Expanded(child: ListTile(title: Text('${items[position].id_estado_conservacion}',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 21.0,

                        ),
                        ),
                          subtitle: Text(
                            '${items[position].si_estado_conservacion}',
                            style: TextStyle(
                            color: Colors.amber,
                            fontSize: 21.0,
                        ),
                        ),
                          leading: Column(
                            children: <Widget> [
                              CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                radius: 17.0,
                                child: Text('${items[position].no_estado_conservacion}',
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 21.0,),
                              )
                              )
                            ],
                          ),

                        )
                        )
                      ],
                    )
                  ],
                );
              },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
