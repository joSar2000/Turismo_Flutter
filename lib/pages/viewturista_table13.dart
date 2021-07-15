import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table14.dart';

class TurismTable13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormWidgetState13();
}

class FormWidgetState13 extends State<TurismTable13> {

  static TextEditingController obs_descripcion_atractivo = TextEditingController();
  //VARIABLES
  String descripcion_atractivo = obs_descripcion_atractivo.text;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('13. DESCRIPCIÓN DEL ATRACTIVO',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded,
              size: 35.0,
              color: HexColor("#A65005"),),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget> [
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded,
                size: 35.0,
                color: HexColor("#A65005"),),
              onPressed: () {
                _sendData(context);
              },
            ),
          ],
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: obs_descripcion_atractivo,
                    maxLength: 500,
                    maxLines: 10,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: HexColor("#0D0D0D"),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      hintText:
                      "Ingrese sus observaciones sobre el atractivo",
                      labelText: ("Descripción"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TurismTable14())
    );
  }

}