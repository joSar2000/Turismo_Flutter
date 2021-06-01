import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:turismo_flutter/GUI/check.dart';

class SavePage extends StatelessWidget {

  static const String ROUTE = "/estado_conservacion";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed : () {
          Navigator.pushNamed(context, CheckBoxTurism.ROUTE );
        },
        ),
      appBar: AppBar(
        title: Text('Estado de conservación e integración a atractivo/entorno',
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        actions: <Widget> [
          IconButton(
            onPressed: () { },
            icon: Icon(Icons.list_outlined),
            tooltip: "Ver Más",
            alignment: Alignment.center,
          )
        ],
      ),
      body: Container(
        child: _FormSaveTurism(),
      )

    );
  }
}


class _FormSaveTurism extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: <Widget> [
            SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 22.0),
                hintText: "Ingrese sus observaciones en caso de ser necesarias",
                labelText: "Observaciones", //observaciones_atractivo_U
                border: OutlineInputBorder(

                  //borderRadius: BorderRadius.all(Radius.elliptical(x, y))
                ),

              ),
            ),

            SizedBox(
            height: 15,
            ),
          ],
        )
    );
  }
}

