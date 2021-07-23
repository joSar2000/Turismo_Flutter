import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table3.dart';

class TableTurism2 extends StatefulWidget {

//Tabla1
  final String categoria;
  final String tipo;
  final String subtipo;

  TableTurism2({Key? key,
    required this.categoria,
    required this.tipo,
    required this.subtipo,
  }): super(key: key);


  @override
  State<StatefulWidget> createState() => new FormWidgetState2();
}

class FormWidgetState2 extends State<TableTurism2> {

  String seleccion = "Loja";
  String seleccion1 = "Catamayo";
  String seleccion2 = "San Pedro";
  String seleccion3 = "San Antonio";
  TextEditingController ubi_calle_prin = TextEditingController();
  TextEditingController ubi_num_lugar = TextEditingController();
  TextEditingController ubi_transversal = TextEditingController();
  TextEditingController ubi_latitud = TextEditingController();
  TextEditingController ubi_longitud = TextEditingController();
  TextEditingController ubi_altura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('2. UBICACIÓN DEL SITIO TURÍSTICO',
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
                _crearComboBoxProvincia("Provincia"),
                _crearComboBoxCanton("Canton"),
                _crearComboBoxParroquia("Parroquia"),
                _crearComboBoxBarrio("Barrio"),

                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: ubi_calle_prin,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Calle Principal",
                        ),
                      ),
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
                        controller: ubi_num_lugar,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Número del Lugar",
                        ),
                      ),
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
                        controller: ubi_transversal,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Transversal",
                        ),
                      ),
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
                        controller: ubi_latitud,
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
                      ),
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
                        controller: ubi_longitud,
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
                      ),
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
                        controller: ubi_altura,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Altura",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  _crearComboBoxProvincia(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Provincia:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: seleccion,
          onChanged: (value) {
            setState(() {
              seleccion = value.toString();
            });
          },
          items: <String>['Loja', 'Imbabura', 'Azuay', 'Pichincha','Guayas']
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
  _crearComboBoxCanton(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Cantón:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: seleccion1,
          onChanged: (value) {
            setState(() {
              seleccion1 = value.toString();
            });
          },
          items: <String>['Catamayo', 'Ibarra', 'Cuenca', 'Guayaquil','Quito']
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
  _crearComboBoxParroquia(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Parroquia:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: seleccion2,
          onChanged: (value) {
            setState(() {
              seleccion2 = value.toString();
            });
          },
          items: <String>['San Pedro', 'Alpachaca', 'El Salvador', 'Ayacucho','Carcelen']
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
  _crearComboBoxBarrio(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Barrio:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: seleccion3,
          onChanged: (value) {
            setState(() {
              seleccion3 = value.toString();
            });
          },
          items: <String>['San Antonio', 'Azaya', 'El Valdo', 'Chillogallo','Samborondon']
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

    String calle_prin = ubi_calle_prin.text;
    String num_lugar = ubi_num_lugar.text;
    String transversal = ubi_transversal.text;
    String latitud = ubi_latitud.text;
    //double latitudD = latitud.toString() as double;
    String longitud = ubi_longitud.text;
    //double longitudD = longitud as double;
    String altura = ubi_altura.text;
    //double alturaD = altura as double;

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TableTurism3(
          num_lugar: num_lugar,
          calle_prin: calle_prin,
          latitud: latitud,
          longitud: longitud,
          transversal: transversal,
          altura: altura,
          subtipo: widget.subtipo,
          tipo: widget.tipo,
          categoria: widget.tipo,
          seleccion1: seleccion1,
          seleccion2: seleccion2,
          seleccion: seleccion,
          seleccion3: seleccion3,
        ))
    );
  }
}