
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:turismo_flutter/pages/final_page.dart';

class TurismTable14 extends StatefulWidget {
  @override
  FormWidgetState14 createState() => FormWidgetState14();
}

class FormWidgetState14 extends State<TurismTable14>  {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: HexColor("#F0F2F2"),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: HexColor("#F0F2F2"),
            title: Text('14. ANEXOS',
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
                  _setData(context);
                },
              ),
            ],
          ),
          /*
        body: ListView(
          children: <Widget> [
            new Container(
              alignment: Alignment.center,
              child: Text(
                "a. Archivo Fotográfico (dos) (HD)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [

              ],
            ),
            /*
            new Container(
              padding: EdgeInsets.all(10.0),
              child: FloatingActionButton(
                elevation: 20.0,
                child: Icon(Icons.camera_alt),
                onPressed: () => _takePhoto(),
              ),
            ),

             */
          ],
        ),

         */
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ),

        )
    );
  }

  void _setData(BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => final_page())
    );
  }
//



}