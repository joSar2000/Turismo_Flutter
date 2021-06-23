
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turismo_flutter/pages/viewturista_table6_2_1.dart';

class turismTable6_3 extends StatelessWidget {
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
              MaterialPageRoute(builder: (context) => turismTable6_2_1()),
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
  final firebaseInstance = FirebaseFirestore.instance;
  bool primerValor = false;

  var table6_1Arr = [];
  getCheckboxItems() async {
    table6_1Arr.clear();
    try {
      await firebaseInstance.collection("atractivos_turisticos_6.3_check").add({
        "declaratoria_espacio": this.primerValor,
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
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          SizedBox(width: 10,),
          titleSection,
          CheckboxListTile(
              secondary: const Icon(Icons.touch_app_outlined),
              subtitle: Text('Marque en caso de ser necesario'),
              activeColor: Colors.green,
              checkColor: Colors.white,
              title: const Text("Declaratoria"),
              value: this.primerValor,
              onChanged: (value) {
                setState(() {
                  this.primerValor = value!;
                  print(this.primerValor);
                });
              }),
          formDeclaratoria(),
          MaterialButton(
            minWidth: 100.0,
            height: 40.0,
            onPressed: () {
              formDeclaratoria().showAlertDialog(context);
              print (DateTime.now());
              getCheckboxItems();
              formDeclaratoria().getTextForm();
            },
            color: Colors.blue,
            child: Text('Guardar', style: TextStyle(color: Colors.white)),
          ),
          buttoms()
        ],
      ),
    );
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
                  'DECLARATORIA DEL ESPACIO TURÍSTICO AOSCIADO AL ATRACTIVO',
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

}

class buttonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment:  CrossAxisAlignment.center,
      children: <Widget> [
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
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

class formDeclaratoria extends StatelessWidget {

  final firebaseInstance = FirebaseFirestore.instance;
  static TextEditingController dec = TextEditingController();
  static TextEditingController den = TextEditingController();
  static TextEditingController alc = TextEditingController();
  static TextEditingController obs = TextEditingController();


  Map<String,String> valoresTexto = {
    'Declarante': dec.text,
    'Denominacion' : den.text,
    'Alcance' : alc.text,
    'Observaciones' : obs.text,
  };

  void getTextForm() async {
    try {
      await firebaseInstance.collection("observaciones_6.3").add({
        "observaciones_entorno_U": valoresTexto.values.elementAt(0),
        "denominacion_espacio": valoresTexto.values.elementAt(1),
        "alcance_espacio": valoresTexto.values.elementAt(2),
        "observaciones_espacio": valoresTexto.values.elementAt(3),
      });
    } catch (e) {
      print(e);
    }
  }

  void showAlertDialog (BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: const Text (
              "Declaratoria almacenada con la fecha actual"),
          action: SnackBarAction(
            label: "OK", onPressed: scaffold.hideCurrentSnackBar,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: <Widget> [
            SizedBox(height: 10,),
            TextFormField(
              controller: dec,
              maxLines: 2,
              validator: (value) {
                if (value!.isEmpty) {
                  return "correcto";
                } else {
                  return "ingrese valores!";
                }
              },
              decoration: InputDecoration(
                icon: Icon(Icons.input_outlined),
                contentPadding: EdgeInsets.all(15.0),
                hintText:
                "Ingrese las especificaciones del declarante",
                labelText: ("Declarante"),
                isCollapsed: false,
                //observaciones_atractivo_U
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(10, 10))),
              ),
            ),
            TextFormField(
              controller: den,
              maxLines: 2,
              validator: (value) {
                if (value!.isEmpty) {
                  return "correcto";
                } else {
                  return "ingrese valores!";
                }
              },
              decoration: InputDecoration(
                icon: Icon(Icons.input_outlined),
                contentPadding: EdgeInsets.all(15.0),
                hintText:
                "Ingrese las especificaciones de denominación",
                labelText: ("Denominación"),
                isCollapsed: false,
                //observaciones_atractivo_U
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(10, 10))),
              ),
            ),
            TextFormField(
              controller: alc,
              maxLines: 2,
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
                "Ingrese las especificaciones del alcance",
                labelText: ("Alcance"),
                isCollapsed: false,
                //observaciones_atractivo_U
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(10, 10))),
              ),
            ),
            TextFormField(
              controller: obs,
              maxLines: 2,
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
                labelText: ("Observaciones"),
                isCollapsed: false,
                //observaciones_atractivo_U
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(10, 10))),
              ),
            ),

          ],
        ),
    );
  }
}

class buttoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.fromLTRB(311.2, 158.0, 0.0, 0.0),
          child: FloatingActionButton(
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
        ),
      ],
    );
  }
}
