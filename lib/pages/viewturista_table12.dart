import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table13.dart';

class TurismTable12 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormWidgetState12();
}

class FormWidgetState12 extends State <TurismTable12> {

  static TextEditingController obs_personas_administracion = TextEditingController();
  static TextEditingController obs_personas_especializadas = TextEditingController();
  static TextEditingController obs_personas_primaria = TextEditingController();
  static TextEditingController obs_personas_secundaria = TextEditingController();
  static TextEditingController obs_personas_tercer_nivel = TextEditingController();
  static TextEditingController obs_personas_cuarto_nivel = TextEditingController();
  static TextEditingController obs_personas_primeros_auxilios = TextEditingController();
  static TextEditingController obs_personas_hospitalidad = TextEditingController();
  static TextEditingController obs_personas_atencion_cliente = TextEditingController();
  static TextEditingController obs_personas_guianza = TextEditingController();
  static TextEditingController obs_personas_discapacidades = TextEditingController();
  static TextEditingController obs_personas_capacitadas_otros = TextEditingController();
  static TextEditingController obs_personas_ingles = TextEditingController();
  static TextEditingController obs_personas_aleman = TextEditingController();
  static TextEditingController obs_personas_frances = TextEditingController();
  static TextEditingController obs_personas_italiano = TextEditingController();
  static TextEditingController obs_personas_chino = TextEditingController();
  static TextEditingController obs_personas_idioma_otro = TextEditingController();
  static TextEditingController obs_personas_nivel_otro = TextEditingController();
  static TextEditingController obs_recurso_humano = TextEditingController();

  //VARIABLES
  bool recurso_humano_si = false;
  bool recurso_humano_no = false;
  bool recurso_humano_s_i = false;
  bool personas_administracion_si = false;
  bool personas_especializadas_si = false;
  bool personas_nivel_instruccion = false;
  bool personas_capacitadas = false;
  bool personas_idiomas = false;
  String personas_administracion = obs_personas_administracion.text;
  String personas_especializadas = obs_personas_especializadas.text;
  String personas_primaria = obs_personas_primaria.text;
  String personas_secundaria = obs_personas_secundaria.text;
  String personas_tercer_nivel = obs_personas_tercer_nivel.text;
  String personas_cuarto_nivel = obs_personas_cuarto_nivel.text;
  String personas_primeros_auxilios = obs_personas_primeros_auxilios.text;
  String personas_hospitalidad = obs_personas_hospitalidad.text;
  String personas_atencion_cliente = obs_personas_atencion_cliente.text;
  String personas_guianza = obs_personas_guianza.text;
  String personas_discapacidades = obs_personas_discapacidades.text;
  String personas_capacitadas_otros = obs_personas_capacitadas_otros.text;
  String personas_ingles = obs_personas_ingles.text;
  String personas_aleman = obs_personas_aleman.text;
  String personas_frances = obs_personas_frances.text;
  String personas_italiano = obs_personas_italiano.text;
  String personas_chino = obs_personas_chino.text;
  String personas_idioma_otro = obs_personas_idioma_otro.text;
  String personas_nivel_otro = obs_personas_nivel_otro.text;
  String recurso_humano = obs_recurso_humano.text;

  int optionGroup_recurso_humano = 0;

  setSelectedRadio_recurso_humano(int val) {
    setState(() {
      optionGroup_recurso_humano = val;
      if (optionGroup_recurso_humano == 1) {
        this.recurso_humano_si = true;
        this.recurso_humano_no = false;
        this.recurso_humano_s_i = false;
        if (this.recurso_humano_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup_recurso_humano == 2) {
        this.recurso_humano_si = false;
        this.recurso_humano_no = true;
        this.recurso_humano_s_i = false;
        if (this.recurso_humano_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup_recurso_humano == 3) {
        this.recurso_humano_si = false;
        this.recurso_humano_no = false;
        this.recurso_humano_s_i = true;
      }
    });
  }

  void _showAlertDialogSi(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'AVISO',
            textAlign: TextAlign.center,
          ),
          content: const Text(
            'Debe llenar esta pantalla con la información correspondiente',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ));
  }
  void _showAlertDialogNo(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'AVISO',
            textAlign: TextAlign.center,
          ),
          content: const Text(
            'Debe navegar hasta la siguiente pantalla con el botón de la parte inferior',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ));
  }
  void _showAlertDialogTable(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar esta columna con la información correspondiente',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('12. RECURSO HUMANO',
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
          padding: EdgeInsets.all(5.0),
          children: <Widget> [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup_recurso_humano,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio_recurso_humano(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup_recurso_humano,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio_recurso_humano(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
                        value: 3,
                        groupValue: optionGroup_recurso_humano,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadio_recurso_humano(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Column(
              children: <Widget> [
                new CheckboxListTile(
                  tristate: false,
                  title: Text(
                    "a. Número de personas a cargo de la administración y operación del atractivo",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  subtitle: Text(
                    "Marque en caso de ser necesario",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                  ),
                  value: this.personas_administracion_si,
                  onChanged: (value) {
                    setState(() {
                      this.personas_administracion_si = value!;
                      if (this.personas_administracion_si == true) {
                        _showAlertDialogSi(context);
                      }
                    });
                  },
                ),
                new Container(
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.recurso_humano_si && this.personas_administracion_si,
                          controller: obs_personas_administracion,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText:
                            "Especifique número de personas",
                            labelText: ("Especifique # personas"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new CheckboxListTile(
                  tristate: false,
                  title: Text(
                    "b. Número de personas especializadas en turismo",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  subtitle: Text(
                    "Marque en caso de ser necesario",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                  ),
                  value: this.personas_especializadas_si,
                  onChanged: (value) {
                    setState(() {
                      this.personas_especializadas_si = value!;
                      if (this.personas_especializadas_si == true) {
                        _showAlertDialogSi(context);
                      }
                    });
                  },
                ),
                new Container(
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.recurso_humano_si && this.personas_especializadas_si,
                          controller: obs_personas_especializadas,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText:
                            "Especifique número de personas",
                            labelText: ("Especifique # personas"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new CheckboxListTile(
                  tristate: false,
                  title: Text(
                    "c.  Número de personas con nivel de instrucción (M):",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  subtitle: Text(
                    "Marque en caso de ser necesario",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                  ),
                  value: this.personas_nivel_instruccion,
                  onChanged: (value) {
                    setState(() {
                      this.personas_nivel_instruccion = value!;
                      if (this.personas_nivel_instruccion == true) {
                        _showAlertDialogSi(context);
                      }
                    });
                  },
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Primaria",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_nivel_instruccion,
                                  controller: obs_personas_primaria,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Secundaria",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_nivel_instruccion,
                                  controller: obs_personas_secundaria,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Tercer Nivel",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_nivel_instruccion,
                                  controller: obs_personas_tercer_nivel,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Cuarto Nivel",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_nivel_instruccion,
                                  controller: obs_personas_cuarto_nivel,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Otro",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_nivel_instruccion,
                                  controller: obs_personas_nivel_otro,
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new CheckboxListTile(
                  tristate: false,
                  title: Text(
                    "d. Número de personas capacitadas por temática (M):",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  subtitle: Text(
                    "Marque en caso de ser necesario",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                  ),
                  value: this.personas_capacitadas,
                  onChanged: (value) {
                    setState(() {
                      this.personas_capacitadas = value!;
                      if (this.personas_capacitadas == true) {
                        _showAlertDialogSi(context);
                      }
                    });
                  },
                ), //Punto D
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Primeros Auxilios",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_capacitadas,
                                  controller: obs_personas_primeros_auxilios,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Hospitalidad",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_capacitadas,
                                  controller: obs_personas_hospitalidad,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Atención al Cliente",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_capacitadas,
                                  controller: obs_personas_atencion_cliente,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Guianza",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_capacitadas,
                                  controller: obs_personas_guianza,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Sensibilización de discapacidades",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_capacitadas,
                                  controller: obs_personas_discapacidades,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Otro",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_capacitadas,
                                  controller: obs_personas_capacitadas_otros,
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new CheckboxListTile(
                  tristate: false,
                  title: Text(
                    "e. Número de personas que manejan algún de Idiomas (M):",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  subtitle: Text(
                    "Marque en caso de ser necesario",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                  ),
                  value: this.personas_idiomas,
                  onChanged: (value) {
                    setState(() {
                      this.personas_idiomas = value!;
                      if (this.personas_idiomas == true) {
                        _showAlertDialogSi(context);
                      }
                    });
                  },
                ), //Punto E
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Inglés",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_idiomas,
                                  controller: obs_personas_ingles,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Alemán",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_idiomas,
                                  controller: obs_personas_aleman,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Francés",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_idiomas,
                                  controller: obs_personas_frances,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Italiano",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_idiomas,
                                  controller: obs_personas_italiano,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Chino",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_idiomas,
                                  controller: obs_personas_chino,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Container(
                            child: Text(
                                "Otro",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                )
                            )
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Container(
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  enabled: this.recurso_humano_si && this.personas_idiomas,
                                  controller: obs_personas_idioma_otro,
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: HexColor("#0D0D0D"),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(20.0),
                                    hintText:
                                    "Especifique",
                                    labelText: ("Especifique"),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(10, 10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          enabled: this.recurso_humano_si,
                          controller: obs_recurso_humano,
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            icon: Icon(Icons.input_outlined),
                            contentPadding: EdgeInsets.all(20.0),
                            hintText:
                            "Ingrese sus observaciones en caso de ser necesarias",
                            labelText: ("Observaciones"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),//Text para OTRO
              ],
            )
          ],
        ),
      ),
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TurismTable13())
    );
  }

}