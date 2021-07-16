import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';

class TableTurism5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FormWidgetState5();
}

class FormWidgetState5 extends State<TableTurism5> {

  String _seleccion = "En el Atractivo";
  String _seleccion1 = "Hotel";
  String _seleccion2 = "Restaurantes";
  String _seleccion3 = "Mayoristas";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('5. PLANTA TURÍSTICA/COMPLEMENTARIOS',
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
                _crearComboBox("Planta Turística"),
                _crearComboBox1("Alojamiento"),
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
                          hintText: "Especifique Establecimientos Registados",
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
                          hintText: "Especifique Número de Mesas",
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
                          hintText: "Especifique Número de Plazas",
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
                _crearComboBox2("Alimentos y bebidas"),
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
                          hintText: "Especifique Establecimientos Registrados",
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
                          hintText: "Especifique Número de mesas",
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
                          hintText: "Especifique Número de Plazas",
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
                _crearComboBox3("Agencias de Viaje"),
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
                          hintText: "Especifique Establecimientos Registrados",
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
                      child: Text("GUÍA",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )),
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
                          hintText: "Especifique Local",
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
                          hintText: "Especifique Nacional",
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
                          hintText: "Especifique Nacional Especializado",
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
                          hintText: "Especifique Cultura",
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
                          hintText: "Especifique Aventura",
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
            "Planta Turística:",
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
          items: <String>['En el Atractivo', 'Ciudad o poblado cercano']
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
            "Alojamiento:",
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
          items: <String>[
            'Hotel',
            'Hostal',
            'Hostería',
            'Hacienda Turística',
            'Lodge',
            'Resort',
            'Refugio',
            'Campamento',
            'Casas de Huéspedes'
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

  _crearComboBox2(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Alimentos y bebidas:",
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
          items: <String>[
            'Restaurantes',
            'Cafeterías',
            'Bares',
            'Fuentes de soda'
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

  _crearComboBox3(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Agencias de Viaje:",
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
          items: <String>['Mayoristas', 'Internacionales', 'Operadoras']
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

  void _sendData(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TableTurism6()));
  }
}