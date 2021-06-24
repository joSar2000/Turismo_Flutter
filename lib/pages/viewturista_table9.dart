
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table8.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class turismTable9 extends StatefulWidget {
  @override
  State <StatefulWidget> createState () => new FormWidgetState9();
}

class FormWidgetState9 extends State<turismTable9> {

  static TextEditingController obs_atractivo_agua_otro_txt = TextEditingController();
  static TextEditingController obs_atractivo_agua_observaciones = TextEditingController();
  static TextEditingController obs_atractivo_aire_otro_txt = TextEditingController();
  static TextEditingController obs_atractivo_aire_observaciones = TextEditingController();
  static TextEditingController obs_atractivo_terrestre_otro_txt = TextEditingController();
  static TextEditingController obs_atractivo_terrestre_observaciones = TextEditingController();
  static TextEditingController obs_atractivo_cultural_otro_txt = TextEditingController();
  static TextEditingController obs_atractivo_cultural_observaciones = TextEditingController();

  //VARIABLES
  bool actividades_si = false;
  bool actividades_no = false;
  bool actividades_s_i = false;
  bool atractivo_natural = false;
  bool atractivo_agua = false;
  bool atractivo_agua_buceo = false;
  bool atractivo_agua_kayak_mar = false;
  bool atractivo_agua_kayak_lacustre = false;
  bool atractivo_agua_kayak_rio = false;
  bool atractivo_agua_surf = false;
  bool atractivo_agua_kite = false;
  bool atractivo_agua_raft = false;
  bool atractivo_agua_snorkel = false;
  bool atractivo_agua_tubing = false;
  bool atractivo_agua_regata = false;
  bool atractivo_agua_paseo_panga = false;
  bool atractivo_agua_paseo_bote = false;
  bool atractivo_agua_paseo_lancha = false;
  bool atractivo_agua_paseo_moto = false;
  bool atractivo_agua_para = false;
  bool atractivo_agua_esqui = false;
  bool atractivo_agua_banana = false;
  bool atractivo_agua_boya = false;
  bool atractivo_agua_pesca = false;
  bool atractivo_agua_otro = false;
  String atractivo_agua_otro_txt = obs_atractivo_agua_otro_txt.text;
  String atractivo_agua_observaciones = obs_atractivo_agua_observaciones.text;
  bool atractivo_aire = false;
  bool atractivo_aire_alas = false;
  bool atractivo_aire_canopy = false;
  bool atractivo_aire_parante = false;
  bool atractivo_aire_otro = false;
  String atractivo_aire_otro_txt = obs_atractivo_aire_otro_txt.text;
  String atractivo_aire_observaciones = obs_atractivo_aire_observaciones.text;
  bool atractivo_terrestre = false;
  bool atractivo_terrestre_montanismo = false;
  bool atractivo_terrestre_escalada = false;
  bool atractivo_terrestre_senderismo = false;
  bool atractivo_terrestre_ciclo = false;
  bool atractivo_terrestre_cany = false;
  bool atractivo_terrestre_cuevas = false;
  bool artractivo_terrestre_recreativas = false;
  bool atractivo_terrestre_cabalgata = false;
  bool atractivo_terrestre_caminata = false;
  bool atractivo_terrestre_camping = false;
  bool atractivo_terrestre_picnic = false;
  bool atractivo_terrestre_flora = false;
  bool atractivo_terrestre_astros = false;
  bool atractivo_terrestre_otro = false;
  String atractivo_terrestre_otro_txt = obs_atractivo_terrestre_otro_txt.text;
  String atractivo_terrestre_observaciones = obs_atractivo_terrestre_observaciones.text;
  bool atractivo_cultural = false;
  bool atractivo_cultural_t_i = false;
  bool atractivo_cultural_recorrido_g = false;
  bool atractivo_cultural_recorrido_a = false;
  bool atractivo_cultural_talleres = false;
  bool atractivo_cultural_participacion_talleres = false;
  bool atractivo_cultural_talleres_a = false;
  bool atractivo_cultural_participacion_artesanales = false;
  bool atractivo_cultural_esposiciones = false;
  bool atractivo_cultural_exhibicion = false;
  bool atractivo_cultural_vivencia = false;
  bool atractivo_cultural_presentaciones = false;
  bool atractivo_cultural_audiovisuales = false;
  bool atractivo_cultural_foto = false;
  bool atractivo_cultural_platos = false;
  bool atractivo_cultural_celebracion = false;
  bool atractivo_cultural_compra = false;
  bool atractivo_cultural_convivencia = false;
  bool atractivo_cultural_medicina = false;
  bool atractivo_cultural_otro = false;
  String atractivo_cultural_otro_txt = obs_atractivo_cultural_otro_txt.text;
  String atractivo_cultural_observaciones = obs_atractivo_cultural_observaciones.text;

  void _showAlertDialogSi(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
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
        )
    );
  }
  void _showAlertDialogObservaciones(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar este apartado con sus especificaciones',
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          //bottom navigation bar on scaffold
          color: HexColor("#364C59"),
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
          10, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(
                      context
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TableTurism8()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('9. ACTIVIDADES QUE SE PRACTICAN (U)',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget> [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "SI",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.actividades_si,
                      onChanged: (value) {
                        setState(() {
                          this.actividades_si = value!;
                          if (this.actividades_si == true) {
                            _showAlertDialogSi(context);
                          }
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "NO",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.actividades_no,
                      onChanged: (value) {
                        setState(() {
                          this.actividades_no = value!;
                          if (this.actividades_no == true) {
                            _showAlertDialogNo(context);
                          }
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "S/I",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.actividades_s_i,
                      onChanged: (value) {
                        setState(() {
                          this.actividades_s_i = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              tristate: false,
              title: Text(
                "ATRACTIVOS NATURALES",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_natural,
              onChanged: (value) {
                setState(() {
                  this.atractivo_natural = value!;
                  if (this.atractivo_natural == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.1.1 En el Agua (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_agua,
              onChanged: (value) {
                setState(() {
                  this.atractivo_agua = value!;
                  if (this.atractivo_agua == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Buceo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_buceo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_buceo = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "b. Kayak de mar",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kayak_mar,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kayak_mar = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Kayak lacustre",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kayak_lacustre,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kayak_lacustre = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "d. Kayak de Río",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kayak_rio,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kayak_rio = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "e. Surf",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_surf,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_surf = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "f. Kite surf",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_kite,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_kite = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "g. Rafting",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_raft,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_raft = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "h. Snorkel",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_snorkel,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_snorkel = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Turbing",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_tubing,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_tubing = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "j. Regata",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_regata,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_regata = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "k. Paseo en panga",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_panga,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_panga = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Paseo en bote",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_bote,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_bote = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "m. Paseo en lancha",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_lancha,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_lancha = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "n. Paseo en moto acuática",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_paseo_moto,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_paseo_moto = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "o. Parasailing",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_para,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_para = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "p. Esquí acuático",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_esqui,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_esqui = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "q. Banana flotante",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_banana,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_banana = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "r. Boya",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_boya,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_boya = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "s. Pesca deportiva",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_pesca,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_pesca = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_agua_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_agua_otro = value!;
                          if (this.atractivo_agua_otro == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
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
                      enabled: this.atractivo_agua_otro && this.actividades_si
                          && this.atractivo_natural && this.atractivo_agua,
                      controller: obs_atractivo_agua_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si && this.atractivo_natural && this.atractivo_agua,
                      controller: obs_atractivo_agua_observaciones,
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
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.1.2 En el Aire (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_aire,
              onChanged: (value) {
                setState(() {
                  this.atractivo_aire = value!;
                  if (this.atractivo_aire == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Alas Delta",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_alas,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_alas = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "b. Canopy",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_canopy,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_canopy = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Parapente",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_parante,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_parante = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "d. Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_aire_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_aire_otro = value!;
                          if (this.atractivo_aire_otro == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
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
                      enabled: this.atractivo_aire_otro && this.actividades_si
                          && this.atractivo_natural && this.atractivo_aire,
                      controller: obs_atractivo_aire_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si && this.atractivo_natural && this.atractivo_aire,
                      controller: obs_atractivo_aire_observaciones,
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
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.1.3 En Superficie Terrestre (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_terrestre,
              onChanged: (value) {
                setState(() {
                  this.atractivo_terrestre = value!;
                  if (this.atractivo_terrestre == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Montañismo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_montanismo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_montanismo = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "b. Escalada",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_escalada,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_escalada = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Senderismo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_senderismo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_senderismo = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "d. Cicloturismo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_ciclo,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_ciclo = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "e. Canyoning",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_cany,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_cany = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "f. Exploración de cuevas",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_cuevas,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_cuevas = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "g. Actividades Recreativas",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.artractivo_terrestre_recreativas,
                      onChanged: (value) {
                        setState(() {
                          this.artractivo_terrestre_recreativas = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "h. Cabalgata",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_cabalgata,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_cabalgata = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Caminata",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_caminata,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_caminata = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "j. Camping",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_camping,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_camping = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "k. Picnic",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_picnic,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_picnic = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Observación de flora y fauna",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_flora,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_flora = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "m. Observación de astros",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_astros,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_astros = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_terrestre_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_terrestre_otro = value!;
                          if (this.atractivo_terrestre_otro == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
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
                      enabled: this.atractivo_terrestre_otro && this.actividades_si
                          && this.atractivo_terrestre ,
                      controller: obs_atractivo_terrestre_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si && this.atractivo_terrestre &this.atractivo_natural,
                      controller: obs_atractivo_terrestre_observaciones,
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
            ),
            new CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              tristate: false,
              title: Text(
                "ATRACTIVOS CULTURALES",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_cultural,
              onChanged: (value) {
                setState(() {
                  this.atractivo_cultural = value!;
                  if (this.atractivo_cultural == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "9.2.1 Tangibles e intangibles",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.atractivo_cultural_t_i,
              onChanged: (value) {
                setState(() {
                  this.atractivo_cultural_t_i = value!;
                  if (this.atractivo_cultural_t_i == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "a. Recorridos guiados",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_recorrido_g,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_recorrido_g = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "b. Recorridos autoguiados",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_recorrido_a,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_recorrido_a = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "c. Visita a talleres artísticos",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_talleres,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_talleres = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "d. Participación en talleres artísticos",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_participacion_talleres,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_participacion_talleres = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "e. Visita a talleres artesanales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_talleres_a,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_talleres_a = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "f. Participación en talleres artesanales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_participacion_artesanales,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_participacion_artesanales = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "g. Exposiciones temáticas permanentes, temporales y eventuales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_esposiciones,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_esposiciones = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "h. Exhibición de piezas, muestras, obras, etc. originales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_exhibicion,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_exhibicion = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Actividades vivenviales y/o lúdicas",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_vivencia,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_vivencia = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "j. Presentaciones o representaciones en vivo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_presentaciones,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_presentaciones = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "k. Muestras audiovisuales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_audiovisuales,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_audiovisuales = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "i. Fotografía",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_foto,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_foto = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "m. Degustación de platos tradicionales",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_platos,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_platos = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "n. Participación de la celebración",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_celebracion,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_celebracion = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "o. Compra de artesanías",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_compra,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_compra = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "p. Convivencia",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_convivencia,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_convivencia = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "q. Medicina ancestral",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_medicina,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_medicina = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      tristate: false,
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.atractivo_cultural_otro,
                      onChanged: (value) {
                        setState(() {
                          this.atractivo_cultural_otro = value!;
                          if (this.atractivo_cultural_otro) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
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
                      enabled: this.atractivo_cultural_otro && this.actividades_si
                          && this.atractivo_cultural && this.atractivo_cultural_t_i ,
                      controller: obs_atractivo_cultural_otro_txt,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones para 'Otro'"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
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
                      enabled: this.actividades_si && this.atractivo_cultural &
                      this.atractivo_cultural_t_i,
                      controller: obs_atractivo_cultural_observaciones,
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
            ),
          ],
        ),
      ),
    );
  }

}


