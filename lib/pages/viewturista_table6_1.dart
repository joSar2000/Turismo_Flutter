
import 'package:turismo_flutter/pages/viewturista_table6_2.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class turismTable6_1 extends StatelessWidget {

  static const String ROUTE = "/estado_conservacion";
  DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title:
          Text('HIGIENE Y SEGURIDAD TURÍSTICA',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
        ),
        body: Center(
            child: Center(
              child: FormSaveWidget(),
            )),
      ),
    );
  }
}


class FormSaveWidget extends StatefulWidget {
  @override
  FormWidgetState createState() => new FormWidgetState();
}

class FormWidgetState extends State {

  static TextEditingController obs_atractivo = TextEditingController();
  static TextEditingController obs_energia_atractivo = TextEditingController();
  static TextEditingController obs_saneamiento_atractivo = TextEditingController();
  static TextEditingController obs_desechos_atractivo = TextEditingController();
  static TextEditingController obs_atractivo_ciudad = TextEditingController();
  static TextEditingController obs_energia_ciudad = TextEditingController();
  static TextEditingController obs_saneamiento_ciudad = TextEditingController();
  static TextEditingController obs_especifique_pic = TextEditingController();
  static TextEditingController obs_especifique_pic_a_c = TextEditingController();
  static TextEditingController obs_especifique_pic_a_t = TextEditingController();
  static TextEditingController obs_especifique_pic_s_a = TextEditingController();
  static TextEditingController obs_especifique_pic_r = TextEditingController();
  static TextEditingController obs_especifique_totems_a_t = TextEditingController();
  static TextEditingController obs_especifique_totems_s = TextEditingController();
  static TextEditingController obs_especifique_totems_d = TextEditingController();
  static TextEditingController obs_especifique_pic_a_n_N = TextEditingController();
  static TextEditingController obs_especifique_pic_a_t_N = TextEditingController();
  static TextEditingController obs_especifique_pic_r_N = TextEditingController();
  static TextEditingController obs_especifique_seniales_t_a = TextEditingController();
  static TextEditingController obs_especifique_paneles_d_a = TextEditingController();
  static TextEditingController obs_especifique_panel_i_a = TextEditingController();
  static TextEditingController obs_especifique_panel_i_d = TextEditingController();
  static TextEditingController obs_especifique_mesas_i = TextEditingController();
  static TextEditingController obs_especifique_totems_s_N = TextEditingController();
  static TextEditingController obs_especifique_totem_d = TextEditingController();
  static TextEditingController obs_especifique_letrero_i_b = TextEditingController();
  static TextEditingController obs_especifique_normativos_c = TextEditingController();
  static TextEditingController obs_otros_senialetica_texto = TextEditingController();
  static TextEditingController obs_observaciones_senialetica = TextEditingController();
  static TextEditingController obs_salud_observaciones = TextEditingController();
  static TextEditingController obs_seguridad_policia_nacional_detalle = TextEditingController();
  static TextEditingController obs_seguridad_policia_municipal_detalle = TextEditingController();
  static TextEditingController obs_seguridad_otra_detalle = TextEditingController();
  static TextEditingController obs_seguridad_observaciones = TextEditingController();
  static TextEditingController obs_servicio_observaciones = TextEditingController();
  static TextEditingController obs_servicio_radio_observaciones = TextEditingController();
  static TextEditingController obs_multiamenaza_institucion_doc = TextEditingController();
  static TextEditingController obs_multiamenaza_nombre_doc = TextEditingController();
  static TextEditingController obs_multiamenazas_observaciones = TextEditingController();
  static TextEditingController obs_especifique_agua_ciudad = TextEditingController();
  static TextEditingController obs_especifique_desechos_ciudad = TextEditingController();

  //VARIABLES
  bool si_higiene_turistica = false;
  bool no_higiene_turistica = false;
  bool s_i_higiene_turistica = false;
  //
  bool servicio_basico = false;
  bool atractivo_servicio_basico = false;
  bool agua_servicio = false;
  String especifique_agua_atractivo = obs_atractivo.toString();
  bool agua_atractivo = false;
  bool energia_atractivo = false;
  bool energia_ciudad = false;
  String especifique_energia_atractivo = obs_energia_atractivo.toString();
  bool saneamiento_atractivo = false;
  String especifique_saneamiento_atractivo = obs_saneamiento_atractivo.toString();
  bool desechos_atractivo = false;
  String especifique_desechos_atractivo = obs_desechos_atractivo.toString();
  String onservaciones_atractivo_ciudad = obs_atractivo_ciudad.toString();
  bool ciudad_poblado_servicio_basico = false;
  bool agua_ciudad = false;
  String especifique_agua_ciudad = obs_energia_ciudad.toString();
  String especifique_energia_ciudad = obs_energia_ciudad.toString();
  bool saneamiento_ciudad = false;
  String especifique_saneamiento_ciudad = obs_saneamiento_ciudad.toString();
  bool desechos_ciudad = false;
  String especifique_desechos_ciudad = obs_especifique_desechos_ciudad.toString();
  //
  bool senialeticas_atarctivo = false;
  bool areas_urbanas = false;
  int pic_a_n_madera = 0;
  int pic_a_n_aluminio = 0;
  int pic_a_n_otro = 0;
  String especifique_pic_a_n = obs_especifique_pic.toString();
  bool pic_a_n_bueno = false;
  bool pic_a_n_regular = false;
  bool pic_a_n_malo = false;
  int pic_a_c_madera = 0;
  int pic_a_c_aluminio = 0;
  int pic_a_c_otro = 0;
  String especifique_pic_a_c = obs_especifique_pic_a_c.toString();
  bool pic_a_c_bueno = false;
  bool pic_a_c_regular = false;
  bool pic_a_c_malo = false;
  int pic_a_t_madera = 0;
  int pic_a_t_aluminio = 0;
  int pic_a_t_otro = 0;
  String especifique_pic_a_t = obs_especifique_pic_a_t.toString();
  bool pic_a_t_bueno = false;
  bool pic_a_t_regular = false;
  bool pic_a_t_malo = false;
  int pic_s_a_madera = 0;
  int pic_s_a_aluminio = 0;
  int pic_s_a_otro = 0;
  String especifique_pic_s_a = obs_especifique_pic_s_a.toString();
  bool pic_s_a_bueno = false;
  bool pic_s_a_regular = false;
  bool pic_s_a_malo = false;
  int pic_r_madera = 0;
  int pic_r_aluminio = 0;
  int pic_r_otro = 0;
  String especifique_pic_r = obs_especifique_pic_r.toString();
  bool pic_r_bueno = false;
  bool pic_r_regular = false;
  bool pic_r_malo = false;
  int totems_a_t_madera = 0;
  int totems_a_t_aluminio = 0;
  int totems_a_t_otro = 0;
  String especifique_totems_a_t = obs_especifique_totems_a_t.toString();
  bool totems_a_t_bueno = false;
  bool totems_a_t_regular = false;
  bool totems_a_t_malo = false;
  int totems_s_madera = 0;
  int totems_s_aluminio = 0;
  int totems_s_otro = 0;
  String especifique_totems_s = obs_especifique_totems_s.toString();
  bool totems_s_bueno = false;
  bool totems_s_regular = false;
  bool totems_s_malo = false;
  int totems_d_madera = 0;
  int totems_d_aluminio = 0;
  int totems_d_otro = 0;
  String especifique_totems_d = obs_especifique_totems_d.toString();
  bool totems_d_bueno = false;
  bool totems_d_regular = false;
  bool totems_d_malo = false;
  bool areas_naturales = false;
  int pic_a_n_madera_N = 0;
  int pic_a_n_aluminio_N = 0;
  int pic_a_n_otro_N = 0;
  String especifique_pic_a_n_N = obs_especifique_pic_a_n_N.toString();
  bool pic_a_c_bueno_N = false;
  bool pic_a_c_regular_N = false;
  bool pic_a_c_malo_N = false;
  int pic_a_t_madera_N = 0;
  int pic_a_t_aluminio_N = 0;
  int pic_a_t_otro_N = 0;
  String especifique_pic_a_t_N = obs_especifique_pic_a_t_N.toString();
  bool pic_s_a_bueno_N = false;
  bool pic_s_a_regular_N = false;
  bool pic_s_a_malo_N = false;
  int pic_r_madera_N = 0;
  int pic_r_alumunio_N = 0;
  int pic_r_otro_N = 0;
  String especifique_pic_r_N = obs_especifique_pic_r_N.toString();
  bool pic_r_bueno_N = false;
  bool pic_r_regular_N = false;
  bool pic_r_malo_N = false;
  int seniales_t_a_madera = 0;
  int seniales_t_a_aluminio = 0;
  int seniales_t_a_otro = 0;
  String especifique_seniales_t_a = obs_especifique_seniales_t_a.toString();
  bool seniales_t_a_bueno = false;
  bool seniales_t_a_regular = false;
  bool seniales_t_a_malo = false;
  int paneles_d_a_madera = 0;
  int paneles_d_a_aluminio = 0;
  int paneles_d_a_otro = 0;
  String especifique_paneles_d_a = obs_especifique_paneles_d_a.toString();
  bool paneles_d_a_bueno = false;
  bool paneles_d_a_regular = false;
  bool paneles_d_a_malo = false;
  int panel_i_a_madera = 0;
  int panel_i_a_aluminio = 0;
  int panel_i_a_otro = 0;
  String especifique_panel_i_a = obs_especifique_panel_i_a.toString();
  bool panel_i_a_bueno = false;
  bool panel_i_a_regular = false;
  bool panel_i_a_malo = false;
  int panel_i_d_madera = 0;
  int panel_i_d_aluminio = 0;
  int panel_i_d_otro = 0;
  String especifique_panel_i_d = obs_especifique_panel_i_d.toString();
  bool panel_i_d_bueno = false;
  bool panel_i_d_regular = false;
  bool panel_i_d_malo = false;
  int mesas_i_madera = 0;
  int mesas_i_aluminio = 0;
  int mesas_i_otro = 0;
  String especifique_mesas_i = obs_especifique_mesas_i.toString();
  bool mesas_i_bueno = false;
  bool mesas_i_regular = false;
  bool mesas_i_malo = false;
  int totems_s_madera_N = 0;
  int totems_s_aluminio_N = 0;
  int totems_s_otro_N = 0;
  String especifique_totems_s_N = obs_especifique_totems_s_N.toString();
  bool totems_s_bueno_N = false;
  bool totems_s_regular_N = false;
  bool totems_s_malo_N = false;
  int totem_d_madera = 0;
  int totem_d_aluminio = 0;
  int totem_d_otro = 0;
  String especifique_totem_d = obs_especifique_totem_d.toString();
  bool totem_d_bueno = false;
  bool totem_d_regular = false;
  bool totem_d_malo = false;
  bool letreros_informativos = false;
  int letrero_i_b_madera = 0;
  int letrero_i_b_aluminio = 0;
  int letrero_i_b_otro = 0;
  String especifique_letrero_i_b = obs_especifique_letrero_i_b.toString();
  bool letrero_i_b_bueno = false;
  bool letrero_i_b_regular = false;
  bool letrero_i_b_malo = false;
  int normativos_c_madera = 0;
  int normativos_c_aluminio = 0;
  int normativos_c_otro = 0;
  String especifique_normativos_c = obs_especifique_normativos_c.toString();
  bool normativos_c_bueno = false;
  bool normativos_c_regular = false;
  bool normativos_c_malo = false;
  bool otros_senialetica = false;
  String otros_senialetica_texto = obs_otros_senialetica_texto.toString();
  String observaciones_senialetica = obs_observaciones_senialetica.toString();
  //
  bool salud_atractivo = false;
  bool atractivo_hospital = false;
  bool atractivo_centro = false;
  bool atractivo_dispensario = false;
  bool atractivo_botiquin = false;
  bool atractivo_otros = false;
  int atractivo_cantidad = 0;
  bool salud_ciudad = false;
  bool ciudad_hospital = false;
  bool ciudad_centro = false;
  bool ciudad_dispensario = false;
  bool ciudad_botiquin = false;
  bool ciudad_otros = false;
  int ciudad_cantidad = 0;
  String salud_observaciones = obs_salud_observaciones.toString();
  //
  bool seguridad_M = false;
  bool seguridad_privada = false;
  bool seguridad_policia_nacional = false;
  bool seguridad_policia_municipal = false;
  bool seguridad_otra = false;
  bool seguridad_privada_detalle = false;
  String seguridad_policia_nacional_detalle = obs_seguridad_policia_nacional_detalle.toString();
  String seguridad_policia_municipal_detalle = obs_seguridad_policia_municipal_detalle.toString();
  String seguridad_otra_detalle = obs_seguridad_otra_detalle.toString();
  String seguridad_observaciones = obs_seguridad_observaciones.toString();
  //
  bool servicio_publico = false;
  bool servicio_atractivo = false;
  bool servicio_ciudad = false;
  bool servicio_atractivo_telefonia = false;
  bool servicio_atractivo_internet = false;
  bool servicio_atractivo_t_fija = false;
  bool servicio_atractivo_t_movil = false;
  bool servicio_atractivo_t_satelital = false;
  bool servicio_atractivo_i_linea = false;
  bool servicio_ciudad_i_fibra = false;
  bool servicio_ciudad_i_satelite = false;
  bool servicio_ciudad_i_redes = false;
  bool servicio_ciudad_i_telefonia = false;
  String servicio_observaciones = obs_servicio_observaciones.toString();
  bool servicio_radio = false;
  bool servicio_radio_exclusivo = false;
  bool servicio_radio_interna = false;
  bool servicio_radio_emergencia = false;
  String servicio_radio_observaciones = obs_servicio_radio_observaciones.toString();
  //
  bool multiamenaza_M = false;
  bool multiamenaza_deslaves = false;
  bool multiamenaza_sismos = false;
  bool  multiamenaza_erupciones = false;
  bool multiamenaza_incendios = false;
  bool multiamenaza_sequia = false;
  bool multiamenaza_inundaciones = false;
  bool multiamenaza_aguajes = false;
  bool multiamenazas_tsunami = false;
  bool multiamenaza_plan_contin = false;
  String multiamenaza_institucion_doc = obs_multiamenaza_institucion_doc.toString();
  String multiamenaza_nombre_doc = obs_multiamenaza_nombre_doc.toString();
  String multiamenazas_observaciones = obs_multiamenazas_observaciones.toString();
  DateTime multiamenaza_anio = DateTime.now();

  void _showAlertDialog(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: const Text (
              "Por favor, navegue hasta la próxima pantalla con el botón de flecha"),
          action: SnackBarAction(
            label: "OK", onPressed: scaffold.hideCurrentSnackBar,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#F0F2F2"),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget> [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
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
                      value: this.si_higiene_turistica,
                      onChanged: (value) {
                        setState(() {
                          this.si_higiene_turistica = value!;
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
                      value: this.no_higiene_turistica,
                      onChanged: (value) {
                        setState(() {
                          this.no_higiene_turistica = value!;
                          if (this.no_higiene_turistica == true) {
                            _showAlertDialog(context);
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
                      value: this.s_i_higiene_turistica,
                      onChanged: (value) {
                        setState(() {
                          this.s_i_higiene_turistica = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            new CheckboxListTile(
              tristate: false,
              title: Text(
                "SERVICI0 BÁSICO",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: HexColor("#364C59"),
                ),
              ),
              value: this.servicio_basico,
              onChanged: (value) {
                setState(() {
                  this.servicio_basico = value!;
                });
              },
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(110.0),
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid, width: 2
                ),
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "a. En el atractivo",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.atractivo_servicio_basico,
                            onChanged: (value) {
                              setState(() {
                                this.atractivo_servicio_basico = value!;
                              });
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "b. En la ciudad o poblado más cercano",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.ciudad_poblado_servicio_basico,
                            onChanged: (value) {
                              setState(() {
                                this.ciudad_poblado_servicio_basico = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Agua",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.agua_atractivo,
                              onChanged: (value) {
                                setState(() {
                                  this.agua_atractivo = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Agua",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.agua_ciudad,
                              onChanged: (value) {
                                setState(() {
                                  this.agua_ciudad = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_atractivo,
                                    maxLines: 5,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),

                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10.0),
                                      hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_especifique_agua_ciudad,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(30.0),
                                        hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Energía eléctrica",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.energia_atractivo,
                              onChanged: (value) {
                                setState(() {
                                  this.energia_atractivo = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Energía eléctrica",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.energia_ciudad,
                              onChanged: (value) {
                                setState(() {
                                  this.energia_ciudad = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_energia_atractivo,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(30.0),
                                      hintText: "Especifique",

                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_energia_ciudad,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(30.0),
                                        hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Saneamiento",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.saneamiento_atractivo,
                              onChanged: (value) {
                                setState(() {
                                  this.saneamiento_atractivo = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Saneamiento",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.saneamiento_ciudad,
                              onChanged: (value) {
                                setState(() {
                                  this.saneamiento_ciudad = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_saneamiento_atractivo,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(30.0),
                                      hintText: "Especifique",

                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_saneamiento_ciudad,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(30.0),
                                      hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Disposición de desechos",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.desechos_atractivo,
                              onChanged: (value) {
                                setState(() {
                                  this.desechos_atractivo = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new CheckboxListTile(
                              title: Text(
                                "Disposición de desechos",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: HexColor("#364C59"),
                                ),
                              ),
                              value: this.desechos_ciudad,
                              onChanged: (value) {
                                setState(() {
                                  this.desechos_ciudad = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ]
                  ),
                  TableRow(
                      children: [
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_desechos_atractivo,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(30.0),
                                      hintText: "Especifique",

                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            new Form(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextField(
                                    maxLength: 300,
                                    controller: obs_especifique_desechos_ciudad,
                                    maxLines: 3,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: HexColor("#99AD8F"),
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(30.0),
                                      hintText: "Especifique",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ]
                  ),
                ],
              ),
            ),
            new Container(
              child: Form(
                child: Column(
                  children: <Widget> [
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: obs_atractivo_ciudad,
                      maxLines: 5,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Ingrese sus observaciones en caso de ser necesarias",
                        labelText: ("Observaciones"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
