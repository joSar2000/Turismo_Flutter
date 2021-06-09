
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table6_1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turismo_flutter/pages/viewturista_table6_2_1.dart';

class turismTable6_2 extends StatelessWidget {
  static const String ROUTE = "/entorno_conservacion";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {//boton atras
            //Navigator.pushNamed(context, turismTable6_1.ROUTE);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => turismTable6_1()),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: AppBar(
          title: Text(
            'ESTADO DE CONSERVACIÓN E INTEGRACIÓN A ATRACTIVO/ENTORNO',
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        body: Center(
            child: Center(
              child: TableTurism6(),
            )
        ),
      ),
    );
  }
}

class TableTurism6 extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  final _formkey = GlobalKey<FormState>();
  static TextEditingController obs = TextEditingController();
  final firebaseInstance = FirebaseFirestore.instance;

  Map<String, String> valorObservaciones = {
    "observaciones_entorno_U": obs.text
  };
  Map<String, bool> values = {

    //Tabla 6.2
    'Entorno (U)': false,
    'Conservado': false,
    'Alterado': false,
    'En proceso de deterioro': false,
    'Deteriorado': false,
  };

  var table6_1Arr = [];
  getCheckboxItems() async {
    values.forEach((key, value) {
      if (value == true) {
        table6_1Arr.add(key);
      }
    });
    table6_1Arr.clear();
    try {
      await firebaseInstance.collection("atractivos_turisticos_6.2").add({
        "entorno_U": values.values.elementAt(0),
        "conservado_entorno_U": values.values.elementAt(1),
        "alterado_entorno_U": values.values.elementAt(2),
        "deterioro_entorno_U": values.values.elementAt(3),
        "deteriorado_entorno_U": values.values.elementAt(4),
      });
    } catch (e) {
      print(e);
    }
  }

  void getTextForm() async {
    try {
      await firebaseInstance.collection("observaciones_6.2").add({
        "observaciones_entorno_U": valorObservaciones.values.elementAt(0)
      });
    } catch (e) {
      print(e);
    }
  }

  void _showAlertDialogAtractivo (BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: const Text ("Debe especificar en qué condiciones se encuentra utilizando las opciones de abajo"),
          action: SnackBarAction(
            label: "OK", onPressed: scaffold.hideCurrentSnackBar,
          ),
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      titleSection,
      Expanded(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: values.keys.map((String key) {
            return new CheckboxListTile(
                secondary: const Icon(Icons.touch_app_outlined),
                subtitle: Text('Marque en caso de ser necesario'),
                title: new Text(key),
                value: values[key],
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    values[key] = value!;
                  });
                });
          }).toList(),
        ),
      ),
      DividerSection,
      Expanded(
        child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: obs,
                  maxLines: 3,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "correcto";
                    } else {
                      return "ingrese valores!";
                    }
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.input_outlined),
                    contentPadding: EdgeInsets.all(20.0),
                    hintText:
                    "Ingrese sus observaciones en caso de ser necesarias",
                    labelText: ("Observaciones"),
                    isCollapsed: true,
                    //observaciones_atractivo_U
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(10, 10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {
                    getCheckboxItems();
                    CheckboxWidgetState().getTextForm();
                    print(obs.text);
                  },
                  color: Colors.blue,
                  child: Text('Guardar', style: TextStyle(color: Colors.white)),
                )
              ],
            )),
      ),
      buttonClass()
    ]);
  }

  Widget DividerSection = Container(
    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
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
    padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ENTORNO (U)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
            )),
      ],
    );
  }
}

class buttonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment:  CrossAxisAlignment.center,
      children: <Widget> [
        Container(
          padding: EdgeInsets.fromLTRB(50.0, 32.0, 250.0, 55.0),
        ),
        new FloatingActionButton(
            heroTag: "btn3",//boton siguiente
            child: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => turismTable6_2_1(),
                ),
              );
            }
        ),
      ],
    );
  }
}
