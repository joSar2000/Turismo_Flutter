import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class final_page extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => FinalPage();
  
}

class FinalPage extends State<final_page>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('GRACIAS POR SU COLABORACIÓN',
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
            child: Text(
                "Gracias por ayudarnos a rellenar este formulario\n"
                    "A continuación, pulsa el botón de la parte inferior para enviar tus datos.",
              textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                )
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          onPressed: () {
            _sendData(context);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }



  void _sendData(BuildContext context) {
    print("enviamos");
  }
  
}