import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table4.dart';

class TableTurism3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FormWidgetState3();
}

class FormWidgetState3 extends State<TableTurism3> {

  String _seleccion = "Frío";
  String _seleccion1 = "Cultura";
  String _seleccion2 = "Pristino";
  String _seleccion3 = "Libre";
  String _seleccion4 = "Todos los dias";
  String _seleccion5 = "Seleccione...";
  String _seleccion6 = "Efectivo";

  var _currentSelectedTime = DateTime.now();
  var _currentTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('3. CARACTERÍSTICAS CLIMATOLÓGICAS',
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
                new Container(
                  child: Column(
                    children: <Widget> [
                      _crearComboBox("Características Climáticas"),
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
                                hintText: "Especifique Clima",
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
                                hintText: "Especifique Temperatura",
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
                                hintText: "Especifique Precipitación",
                              ),
                            )
                          ],
                        ),
                      ),
                      _crearComboBox1("Linea a la que pertenece"),
                      new Container(
                        child: Text(
                            "Escenario donde se localiza el atractivo turístico",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                      ),
                      _crearComboBox2(),
                      new Container(
                        child: Text(
                          "Tipo de Ingreso",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                      ),
                      _crearComboBox3("Tipo de Ingreso"),
                      _crearComboBox4("Atención"),
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
                      _crearComboBox5("Maneja un sistema de reservas"),
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
                                hintText: "Especifique Precio",
                              ),
                            )
                          ],
                        ),
                      ),
                      _crearComboBox6("Forma de Pago"),
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
                                hintText: "Especifique Meses recomendables de visita",
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
                  ),
                )
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
            "Clima:",
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
          items: <String>['Frío', 'Templado', 'Calor']
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
          items: <String>['Cultura', 'Naturaleza', 'Aventura']
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

  _crearComboBox2() {
    return Center(
      child: Row(
        children: [
          DropdownButton(
            value: _seleccion2,
            onChanged: (value) {
              setState(() {
                _seleccion2 = value.toString();
              });
            },
            items: <String>['Pristino', 'Primitivo', 'Rustico', 'Rural', 'Urbano']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
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
          items: <String>['Libre', 'Restringido', 'Pagado']
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

  _crearComboBox4(String texto) {
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
          value: _seleccion4,
          onChanged: (value) {
            setState(() {
              _seleccion4 = value.toString();
            });
          },
          items: <String>['Todos los dias', 'Fines de semana y feriados', 'Solo dias habiles', 'Otro']
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

  _crearComboBox5(String texto) {
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
          value: _seleccion5,
          onChanged: (value) {
            setState(() {
              _seleccion5 = value.toString();
            });
          },
          items: <String>['Seleccione...', 'SI', 'NO']
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

  _crearComboBox6(String texto) {
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
          value: _seleccion6,
          onChanged: (value) {
            setState(() {
              _seleccion6 = value.toString();
            });
          },
          items: <String>['Efectivo', 'Tarjeta de Crédito', 'Dinero Electronico', 'Transferencia Bancaria',
            'Deposito Bancario', 'Tarjeta de Debito', 'Cheque']
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
        MaterialPageRoute(builder: (context) => TableTurism4())
    );
  }

}