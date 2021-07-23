import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table4.dart';

class TableTurism3 extends StatefulWidget {

  //Tabla1
  final String categoria;
  final String tipo;
  final String subtipo;
  //Tabla2
  final String calle_prin;
  final String num_lugar ;
  final String transversal ;
  final String latitud ;
  final String longitud ;
  final String altura ;
  final String seleccion ;
  final String seleccion1;
  final String seleccion2 ;
  final String seleccion3 ;

  TableTurism3(
  {Key? key,
    required this.categoria,
    required this.tipo,
    required this.subtipo,
    required this.calle_prin,
    required this.num_lugar,
    required this.transversal,
    required this.latitud,
    required this.longitud,
    required this.altura,
    required this.seleccion,
    required this.seleccion1,
    required this.seleccion2,
    required this.seleccion3,
  }
      )
      : super(key: key);

  @override
  State<StatefulWidget> createState() => new FormWidgetState3();
}

class FormWidgetState3 extends State<TableTurism3> {
  String seleccionTab3 = "Frío";
  String seleccion1Tab3 = "Cultura";
  String seleccion2Tab3 = "Pristino";
  String seleccion3Tab3 = "Libre";
  String seleccion4Tab3 = "Todos los dias";
  String seleccion5Tab3 = "Seleccione...";
  String seleccion6Tab3 = "Efectivo";

  TextEditingController carac_clima = TextEditingController();
  TextEditingController carac_temperatura = TextEditingController();
  TextEditingController carac_precipitacion = TextEditingController();
  TextEditingController carac_espec_escena = TextEditingController();
  TextEditingController carac_precio = TextEditingController();
  TextEditingController carac_meses_recomen = TextEditingController();
  TextEditingController carac_observa = TextEditingController();

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
          title: Text('3. CARACTERÍSTICAS CLIMATOLÓGICAS',
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
              Navigator.pop(context);
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
                  child: Column(
                    children: <Widget>[
                      _crearComboBox("Características Climáticas"),
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              controller: carac_clima,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: carac_temperatura,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: carac_precipitacion,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              controller: carac_espec_escena,
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
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Maneja un sistema de reserva",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      _crearComboBox5(),
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: carac_precio,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              controller: carac_meses_recomen,
                              maxLines: 3,
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                icon: Icon(Icons.input),
                                contentPadding: EdgeInsets.all(10.0),
                                hintText:
                                "Especifique Meses recomendables de visita",
                              ),
                            )
                          ],
                        ),
                      ),
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              controller: carac_observa,
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
          value: seleccionTab3,
          onChanged: (value) {
            setState(() {
              seleccionTab3 = value.toString();
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
          value: seleccion1Tab3,
          onChanged: (value) {
            setState(() {
              seleccion1Tab3 = value.toString();
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
            value: seleccion2Tab3,
            onChanged: (value) {
              setState(() {
                seleccion2Tab3 = value.toString();
              });
            },
            items: <String>[
              'Pristino',
              'Primitivo',
              'Rustico',
              'Rural',
              'Urbano'
            ].map<DropdownMenuItem<String>>((String value) {
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
          value: seleccion3Tab3,
          onChanged: (value) {
            setState(() {
              seleccion3Tab3 = value.toString();
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
          value: seleccion4Tab3,
          onChanged: (value) {
            setState(() {
              seleccion4Tab3 = value.toString();
            });
          },
          items: <String>[
            'Todos los dias',
            'Fines de semana y feriados',
            'Solo dias habiles',
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

  _crearComboBox5() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),

        ),
        DropdownButton(
          value: seleccion5Tab3,
          onChanged: (value) {
            setState(() {
              seleccion5Tab3 = value.toString();
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
          value: seleccion6Tab3,
          onChanged: (value) {
            setState(() {
              seleccion6Tab3 = value.toString();
            });
          },
          items: <String>[
            'Efectivo',
            'Tarjeta de Crédito',
            'Dinero Electronico',
            'Transferencia Bancaria',
            'Deposito Bancario',
            'Tarjeta de Debito',
            'Cheque'
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
    String temperatura = carac_temperatura.text;
    String precipitacion = carac_precipitacion.text;
    String especificar = carac_espec_escena.text;
    String precio = carac_precio.text;
    String meses_recomen = carac_meses_recomen.text;
    String observaciones = carac_observa.text;

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TableTurism4(
      especificar: especificar,
      precipitacion: precipitacion,
      precio: precio,
      observaciones: observaciones,
      transversal: widget.transversal,
      longitud: widget.longitud,
      altura: widget.altura,
      temperatura: temperatura,
      meses_recomen: meses_recomen,
      num_lugar: widget.num_lugar,
      calle_prin: widget.calle_prin,
      latitud: widget.latitud,
      tipo: widget.tipo,
      categoria: widget.categoria,
      subtipo: widget.subtipo,
      seleccion2: widget.seleccion2,
      seleccion1: widget.seleccion1,
      seleccion3: widget.seleccion3,
      seleccion: widget.seleccion,
      seleccion2Tab3: seleccion2Tab3,
      seleccion3Tab3: seleccion3Tab3,
      seleccion6Tab3: seleccion6Tab3,
      seleccion5Tab3: seleccion5Tab3,
      seleccionTab3: seleccionTab3,
      seleccion4Tab3: seleccion4Tab3,
      seleccion1Tab3: seleccion1Tab3,
    )));
  }
}
