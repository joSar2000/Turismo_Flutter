import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/check_6.dart';

class SavePage extends StatelessWidget {

  static const String ROUTE = "/estado_conservacion";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.pushNamed(context, CheckBoxTurism.ROUTE);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          title: Text(
            'Ficha Atractivos Turísticos del Ecuador',
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        body: Center(
            child: Center(
              child: FormSaveWidget(),
            )),
      ),
    );
  }
}


class FormSaveWidget extends StatefulWidget {
  @override
  FormWidgetState createState() => new FormWidgetState();
}

class FormWidgetState extends State {
  final firebaseInstance = FirebaseFirestore.instance;

  Map<String, bool> values = {
    //Tabla6
    'SI' : false,
    'NO': false,
    'S/I': false,
    //Tabla 6.1
    'Atractivo (U)': false,
    'Conservado': false,
    'Alterado': false,
    'En proceso de deterioro': false,
    'Deteriorado': false,
  };

  var table6_1Arr = [];
  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        table6_1Arr.add(key);
      }
    });
    table6_1Arr.clear();
    firebaseInstance.collection("Factores de alteracion y deterioro").add({
      "si_estado_conservacion": values.values.elementAt(0),
      "no_estado_conservacion": values.values.elementAt(1),
      "s_i_estado_conservacion": values.values.elementAt(2),
      "atractivo_U": values.values.elementAt(3),
      "conservado_atractivo_U": values.values.elementAt(4),
      "alterado_atractivo_U": values.values.elementAt(5),
      "deterioro_atractivo_U": values.values.elementAt(6),
      "deteriorado_atractivo_U": values.values.elementAt(7),
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        titleSection,
        Expanded(
          child: ListView(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            children: values.keys.map((String key) {
              return new CheckboxListTile(
                  title: new Text(key),
                  value: values[key],
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      values[key] = value!;
                      print('valores: $values');
                      //print(values.values.elementAt(0));
                    });
                  }
                  );
            }).toList(),
          ),
        ),
        MaterialButton(
          minWidth: 100.0,
          height: 40.0,
          onPressed: () {
            CheckboxWidgetState().getCheckboxItems();
          },
          color: Colors.blue,
          child: Text('Guardar', style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
  Widget titleSection = Container(
    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*2*/
              Container(
                color: Colors.amberAccent,
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'NATURALES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                '*IMPORTANTE\nEn caso de elegir "NO", prosiga con la siguiente opción',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

