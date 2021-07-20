import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table12.dart';
import 'package:turismo_flutter/pages/viewturista_table2.dart';

class TurismTable1 extends StatefulWidget {
  static const String ROUTE = '/';
  @override
  State<StatefulWidget> createState() => new FormWidgetState1();
}

TextEditingController DG_categoria = TextEditingController();
TextEditingController DG_tipo = TextEditingController();
TextEditingController DG_subtipo = TextEditingController();

class FormWidgetState1 extends State<TurismTable1> {
  static const String ROUTE = "/primera_ruta";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: HexColor("#F0F2F2"),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: HexColor("#F0F2F2"),
            title: Text('1. DATOS GENERALES',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: HexColor("#A65005"),
                )),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                size: 35.0,
                color: HexColor("#A65005"),
              ),
              onPressed: () {
                //Navigator.pop(context);
                print("Colocar página principal");
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 35.0,
                  color: HexColor("#A65005"),
                ),
                onPressed: () async {
                  _sendData(context);
                  //guardarPreferencias();
                },
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.all(5.0),
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(15.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 1,
                          ),
                          TextField(
                            controller: DG_categoria,
                            maxLines: 3,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.input),
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: "Especifique Categoría",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(15.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 1,
                          ),
                          TextField(
                            controller: DG_tipo,
                            maxLines: 3,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.input),
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: "Especifique Tipo",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(15.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 1,
                          ),
                          TextField(
                            controller: DG_subtipo,
                            maxLines: 3,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(Icons.input),
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: "Especifique Subtipo",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }

  void _sendData(BuildContext context) {
    String categoria = DG_categoria.text;
    String tipo = DG_tipo.text;
    String subtipo = DG_subtipo.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => new TableTurism2(
                  categoria: categoria,
                  tipo: tipo,
                  subtipo: subtipo,
                )));
  }
}
