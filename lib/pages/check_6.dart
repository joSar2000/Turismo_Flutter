import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_tabla6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CheckBoxTurism extends StatelessWidget {
  static const String ROUTE = "/check_6";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.pushNamed(context, SavePage.ROUTE);
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
          child: CheckboxWidget(),
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
  var form = new FormSave();
  final firebaseInstance = FirebaseFirestore.instance;

  Map<String, String> valorObservaciones = {
    "observaciones_atractivo_U": FormSave().valorObs
  };
  Map<String, bool> values = {
    //Tabla6
    'SI': false,
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
      "observaciones_atractivo_U": valorObservaciones.values.elementAt(0),
    });
    print("valores observacion: ");
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
                activeColor: Colors.green,
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
      FormSave(),
    ]);
  }

  Widget DividerSection = Container(
    child: Column(
      children: [
        Divider(
          height: 60,
          thickness: 3,
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
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                '*IMPORTANTE\nEn caso de elegir "NO", prosiga con la siguiente página',
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

  Widget ChecksTable2(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(15),
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
                    // print(values.values.elementAt(0));
                  });
                });
          }).toList(),
        ))
      ],
    );
  }
}

//Formulario de observaciones
@immutable
// ignore: must_be_immutable
class FormSave extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final obs = TextEditingController();
  String valorObs = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              TextFormField(
                onChanged: (observacion) {
                   this.valorObs = observacion;
                },
                controller: obs,
                maxLines: 8,
                validator: (value) {
                  if (value!.isNotEmpty) {
                    return "correcto";
                  } else {
                    return "ingrese valores!";
                  }
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(30),
                  hintText:
                      "Ingrese sus observaciones en caso de ser necesarias",
                  labelText: ("Observaciones"),
                  isCollapsed: true,
                  //observaciones_atractivo_U
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                minWidth: 100.0,
                height: 40.0,
                onPressed: () {
                  CheckboxWidgetState().getCheckboxItems();
                  print ("Valor obs: "+valorObs);
                },
                color: Colors.blue,
                child: Text('Guardar', style: TextStyle(color: Colors.white)),
              )
            ],
          )),
    );
  }
}
