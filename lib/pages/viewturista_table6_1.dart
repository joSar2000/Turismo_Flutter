
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';

class turismTable6_1 extends StatelessWidget {

  static const String ROUTE = "/estado_conservacion";
  DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: AppBar(
          title: Text(
            'FACTORES DE ALTERACIÓN Y DETERIORO (M)',
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
    //Tabla6.1.1.1
    'Erosión': false,
    'Humedad': false,
    'Desastres Naturales': false,
    'Flora/Fauna': false,
    'Clima': false,
    'Otros' : false,
  };
  Map<String, bool> valores = {
    //Tabla6.1.1.1
    'Actividades agrícolas y ganaderas': false,
    'Actividades forestales': false,
    'Actividades extractivas/minería': false,
    'Actividades industriales': false,
    'Negligencia/Abandono': false,
    'Huaquearía': false,
    'Conflicto de tendencia': false,
    'Condiciones de uso y exposición': false,
    'Falta de mantenimiento': false,
    'Contaminación del ambiente': false,
    'Generación de residuos': false,
    'Expansión urbana': false,
    'Conflicto político/social': false,
    'Desarrollo industrial/comercial': false,
    'Vandalismo': false,
  };
  var table6_1Arr = [];
  var table6_1_1Arr = [];
  getCheckboxItems_6_1_1() {
    values.forEach((key, value) {
      if (value == true) {
        table6_1Arr.add(key);
      }
    });

    valores.forEach((key, value) {
      if (value == true) {
        table6_1_1Arr.add(key);
      }
    });
    table6_1Arr.clear();
    table6_1_1Arr.clear();
    firebaseInstance.collection("Factores de alteracion y deterioro (M)").add({
      "erosion_M_fac": values.values.elementAt(0),
      "humedad_M_fac": values.values.elementAt(1),
      "desastres_naturales_M_fac": values.values.elementAt(2),
      "flora_fauna_M_fac": values.values.elementAt(3),
      "clima_M_fac" : values.values.elementAt(4),
      "otro_M_fac": values.values.elementAt(5),
      "actividades_agricolas_M_fac": valores.values.elementAt(0),
      "actividades_forestales_M_fac": valores.values.elementAt(1),
      "actividades_mineria_M_fac": valores.values.elementAt(2),
      "actividades_industriales_M_fac": valores.values.elementAt(3),
      "neglicencia_M_fac": valores.values.elementAt(4),
      "huaqueria_M_fac": valores.values.elementAt(5),
      "conflicto_tenencia_M_fac": valores.values.elementAt(6),
      "condiciones_uso_M_fac": valores.values.elementAt(7),
      "falta_mantenimiento_M_fac": valores.values.elementAt(8),
      "contaminacion_ambiente_M_fac": valores.values.elementAt(9),
      "generacion_residuos_M_fac": valores.values.elementAt(10),
      "expansion_urbana_M_fac": valores.values.elementAt(11),
      "conflicto_politico_social_M_fac": valores.values.elementAt(12),
      "desarrollo_industrial_M_fac": valores.values.elementAt(13),
      "vandalismo_M_fac": valores.values.elementAt(14),
    });
  }

  void _showAlertDialog (BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
        SnackBar(
            content: const Text ("Debe añadir una observación dando click en el botón de texto"),
            action: SnackBarAction(
              label: "OK", onPressed: scaffold.hideCurrentSnackBar,
            ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    //print(DateTime.now());
    return Column(
      children:<Widget> [
        titleSection,
        Expanded(
          child: ListView(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            children: values.keys.map((String key) {
              return new CheckboxListTile(
                  subtitle: Text("Marque la casilla en caso de ser necesario"),
                  secondary: const Icon(Icons.touch_app_outlined),
                  title: new Text(key),
                  value: values[key],
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      values[key] = value!;
                      //print('valores: $values');
                      //print(values.values.elementAt(0));
                      if (values.values.elementAt(5) == true) {
                        print ("debes poner un texto");
                        _showAlertDialog(context);
                      }
                    });
                  }
                  );
            }).toList(),
          ),
        ),
        titleSection2,
        Expanded(
          child: ListView(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            children: valores.keys.map((String key) {
              return new CheckboxListTile(
                  subtitle: Text("Marque la casilla en caso de ser necesario"),
                  secondary: const Icon(Icons.touch_app_outlined),
                  title: new Text(key),
                  value: valores[key],
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      valores[key] = value!;
                      //print('valores: $valores');
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
            getCheckboxItems_6_1_1();
          },
          color: Colors.blue,
          child: Text('Guardar', style: TextStyle(color: Colors.white)),
        ),
        buttonClass(),
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
                  'NATURALES (M)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  Widget titleSection2 = Container(
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
                  'ANTRÓPICOS/ANTROPOGÉNICOS (M)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
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
          padding: EdgeInsets.fromLTRB(50.0, 32.0, 100.0, 55.0),
        ),
        new FloatingActionButton(
          heroTag: "btn2",
          child: Icon(Icons.text_fields),
          onPressed: () {
          }
        ),
        Container(
          padding: EdgeInsets.fromLTRB(75.0, 32.0, 0.0, 55.0),
        ),
        new FloatingActionButton(
            heroTag: "btn3",
            child: Icon(Icons.arrow_forward_ios),
            onPressed: () {
            }
        ),
      ],
    );
  }
}





