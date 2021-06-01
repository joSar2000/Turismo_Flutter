import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_tabla6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/main.dart';

class CheckBoxTurism extends StatelessWidget {
  static const String ROUTE = "/check_6";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),

          onPressed: () {
            Navigator.pushNamed(context, SavePage.ROUTE);

          },
        ),
        appBar: AppBar(
          title: Text(
            'Ficha Atractivos Turísticos del Ecuador',
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list_outlined),
              tooltip: "Ver Más",
              alignment: Alignment.center,
            )
          ],
        ),
        body: Center(
            child: Center(
          child:CheckboxWidget(),
        )),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {

  Map<String, bool> values = {
    //Tabla6
    'SI': false,
    'NO': false,
    'S/I': false,
    //Tabla 6.1
    'Atractivo (U)': false,
    'Conservado' : false,
    'Alterado' : false,
    'En proceso de deterioro': false,
    'Deteriorado' : false,
  };

  var table6_1Arr = [];
  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        table6_1Arr.add(key);
      }
    });

    table6_1Arr.clear();

    final firebaseInstance = FirebaseFirestore.instance;

    firebaseInstance.collection("usuario").add({
      //Tabla6
      "si_estado_conservacion": values.values.elementAt(0),
      "no_estado_conservacion": values.values.elementAt(1),
      "s_i_estado_conservacion": values.values.elementAt(2),
      //Tabla6.1
      "atractivo_U": values.values.elementAt(3),
      "conservado_atractivo_U": values.values.elementAt(4),
      "alterado_atractivo_U": values.values.elementAt(5),
      "deterioro_atractivo_U": values.values.elementAt(6),
      "deteriorado_atractivo_U": values.values.elementAt(7),
    });
  }
  setEnabled () {
    if (values.values.elementAt(0) == true) {
      TextField(
        enabled: true,
      ) ;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      titleSection,
      Expanded(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          children: values.keys.map((String key) {
            return new CheckboxListTile(
                title: new Text(key),
                value: values[key],
                activeColor: Colors.pink,
                checkColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    values[key] = value!;
                    //print('valores: $values.$value');
                    print(values.values.elementAt(0));

                  });
                });

          }).toList(),

        ),

      ),
      DividerSection,


      Expanded(
          child: Form(
              child: Column(
                children: <Widget> [
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    maxLines: 10,

                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.all(10.0),
                      hintText: "Ingrese sus observaciones en caso de ser necesarias",
                      labelText: ("Observaciones para el estado de conservación del sitio turístico"),
                      
                      //observaciones_atractivo_U
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.elliptical(5, 5))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
          ),
      ),

      FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
          onPressed: getCheckboxItems,
      ),
      DividerSection,
    ]);
  }

  Widget DividerSection = Container(
    child: Column(
      children: [
        Divider(
          height: 50,
          thickness: 5,
          color: Colors.black,
          indent: 20,
          endIndent: 20,
        )
      ],
    ),
  );

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
                  'Estado de conservación e integración a atractivo/entorno',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );



 Widget ChecksTable2 (BuildContext context) {
  return Column(
    children: <Widget> [
      Expanded(
          child: ListView(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            children: values.keys.map((String key) {
              return new CheckboxListTile(
                  title: new Text(key),
                  value: values[key],
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      values[key] = value!;
                      //print('valores: $values.$value');
                      print(values.values.elementAt(0));
                    });
                  });

            }).toList(),
          )
      )
    ],
  );
 }


}


