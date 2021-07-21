import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table1.dart';

class initial_page extends StatefulWidget {
  static const String ROUTE = '/';
  const initial_page({Key? key}) : super(key: key);

  @override
  initial_pageState createState() => initial_pageState();
}

class initial_pageState extends State<initial_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(width: 500,
      padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/principal.png',
            ),
            repeat: ImageRepeat.repeat,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            scale: 50.0
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          //backgroundColor: HexColor("#F0F2F2"),
          appBar: AppBar(centerTitle: true,
            elevation: 0,
            //backgroundColor: HexColor("#F0F2F2"),
            backgroundColor: Colors.transparent,
            title: Text('BIENVENIDO',
                textAlign: TextAlign.center,
                maxLines: 1,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: HexColor("#A65005"),
                )),
          ),
          body: Center(
            child: Container(
              color: Colors.black38,
              child: Text(
                "Bienvenido a la Ficha de Recursos Turísticos del Ecuador\n Por favor, ayúdanos llenando el siguiente formulario.",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  //color: HexColor("#364C59"),
                  color: Colors.white
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            mini: true,
            onPressed: () {
              _sendData(context);
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        ),
      ),
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => TurismTable1())
    );
  }
}
