import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turismo_flutter/pages/viewturista_table6_2_1.dart';

class TableTurism6_2 extends StatefulWidget {
  static const String ROUTE = "/entorno";
  final bool si_estado_conservacion;
  final String observaciones_atractivo_U;
  final bool si_higiene_turistica;

  TableTurism6_2(
      {Key? key,
      required this.si_estado_conservacion,
      required this.observaciones_atractivo_U,
      required this.si_higiene_turistica})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State<TableTurism6_2> {
  final _formkey = GlobalKey<FormState>();
  static TextEditingController obs = TextEditingController();
  final firebaseInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            child: Text(
              "mostrar"
            ),
            onPressed: () {
              print(widget.si_higiene_turistica);
              print(widget.observaciones_atractivo_U);
              print(widget.si_estado_conservacion);
            },
          ),
        ),
      ),
    );
  }
}
