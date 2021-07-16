import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table5.dart';

class TableTurism4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FormWidgetState4();
}

class FormWidgetState4 extends State<TableTurism4> {

  String _seleccion = "Primer Orden";
  String _seleccion1 = "Maritimo";
  String _seleccion2 = "Nacional";
  String _seleccion3 = "Bus";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('4. ACCESO Y CONEXIÓN AL ATRACTIVO',
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
              onPressed: () async {
                _sendData(context);
                //guardarPreferencias();
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget> [
            new Column(
              children: <Widget> [
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Nombre de la ciudad más cercana",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Distancia desde la ciudad",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Tiempo en auto al atractivo",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Latitud",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Longitud",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                      child: Text("VÍAS DE ACCESO",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )),
                ),
                new Center(
                    child: Text("Terrestre (M)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        color: HexColor("#364C59"),
                      ),
                    )),
                _crearComboBox("Tipo de Via"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Coordenada de Inicio",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Coordenada de Fin",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Distancia (KM)",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Tipo de Material",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Estado",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                      child: Text("Acuático (U)",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),)),
                ),
                _crearComboBox1("Tipo de Via"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Puerto/Muelle de Partida",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                      child: Text("Aéreo (U)",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),)),
                ),
                _crearComboBox2("Tipo de Vuelo"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                      child: Text("SERVICIO DE TRANSPORTE",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),)),
                ),
                _crearComboBox3("Servicios"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        //controller: , -> Debes agregar la variable
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  _crearComboBox(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion,
          onChanged: (value) {
            setState(() {
              _seleccion = value.toString();
            });
          },
          items: <String>['Primer Orden', 'Segundo Orden', 'Tercer Orden']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  _crearComboBox1(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion1,
          onChanged: (value) {
            setState(() {
              _seleccion1 = value.toString();
            });
          },
          items: <String>['Maritimo', 'Lacustre', 'Fluvial']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  _crearComboBox2(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion2,
          onChanged: (value) {
            setState(() {
              _seleccion2 = value.toString();
            });
          },
          items: <String>['Nacional', 'Internacional']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  _crearComboBox3(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion3,
          onChanged: (value) {
            setState(() {
              _seleccion3 = value.toString();
            });
          },
          items: <String>[
            'Bus',
            'Buseta',
            'Transporte 4x4',
            'Taxi',
            'Moto taxi',
            'Teleferico',
            'Lancha',
            'Bote',
            'Barco',
            'Canoa',
            'Avion',
            'Avioneta',
            'Helicoptero',
            'Otro'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TableTurism5())
    );
  }
}