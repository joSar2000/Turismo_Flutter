import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/final_page.dart';

class TurismTable16 extends StatefulWidget {
  const TurismTable16({Key? key}) : super(key: key);

  @override
  TurismTable16State createState() => TurismTable16State();
}

class TurismTable16State extends State<TurismTable16> {

  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
    currentDate.toString();
  }

  static TextEditingController obs_nombres = TextEditingController();
  static TextEditingController obs_institucion = TextEditingController();
  static TextEditingController obs_cargo = TextEditingController();
  static TextEditingController obs_email = TextEditingController();
  static TextEditingController obs_telef = TextEditingController();
  static TextEditingController obs_firma = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('FIRMAS DE RESPONSABILIDAD',
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
        body: ListView(
          children: <Widget> [
            new Column(
              children: <Widget> [
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          enabled: true,
                          controller: obs_nombres,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese sus Apellidos y Nombres",
                            labelText: ("Apellidos y Nombres"),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          enabled: true,
                          controller: obs_institucion,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese su Institución",
                            labelText: ("Institución"),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          enabled: true,
                          controller: obs_cargo,
                          maxLines: 3,
                          validator: (obsAlcance) {
                            if (obsAlcance!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese su Cargo",
                            labelText: ("Cargo"),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          enabled: true,
                          controller: obs_email,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText:
                            "Ingrese su Email",
                            labelText: ("Email"),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          enabled: true,
                          controller: obs_telef,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese su Teléfono",
                            labelText: ("Teléfono"),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          enabled: true,
                          controller: obs_firma,
                          maxLines: 3,

                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese su Firma",
                            labelText: ("Firma"),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                maxLines: 3,
                                enabled: false,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.calendar_today),
                                  contentPadding: EdgeInsets.all(20.0),
                                  //hintText: currentDate.toString(),
                                  labelText: ("[DD-MM-AAAA]\n[" +
                                      currentDate.day.toString() + " - " + currentDate.month.toString() + " - " + currentDate.year.toString() +
                                      "]"),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.elliptical(10, 10))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                          elevation: 20.0,
                          child: Icon(Icons.calendar_today),
                          onPressed: () => _selectDate(context),
                        ),
                      ),
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

  void _sendData(BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => final_page())
    );
  }
}
