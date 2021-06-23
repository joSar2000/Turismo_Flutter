import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:turismo_flutter/pages/viewturista_table8.dart';

class FormSaveWidget extends StatefulWidget {
  final bool si_estado_conservacion;
  final String observaciones_atractivo_U;

  FormSaveWidget(
      {Key? key,
      required this.si_estado_conservacion,
      required this.observaciones_atractivo_U})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => new FormWidgetState();
}

class FormWidgetState extends State<FormSaveWidget> {
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
  static TextEditingController obs_atractivo = TextEditingController();
  static TextEditingController obs_energia_atractivo = TextEditingController();
  static TextEditingController obs_saneamiento_atractivo =
      TextEditingController();
  static TextEditingController obs_desechos_atractivo = TextEditingController();
  static TextEditingController obs_atractivo_ciudad = TextEditingController();
  static TextEditingController obs_energia_ciudad = TextEditingController();
  static TextEditingController obs_saneamiento_ciudad = TextEditingController();
  static TextEditingController obs_especifique_pic = TextEditingController();
  static TextEditingController obs_especifique_pic_a_c =
      TextEditingController();
  static TextEditingController obs_especifique_pic_a_t =
      TextEditingController();
  static TextEditingController obs_especifique_pic_s_a =
      TextEditingController();
  static TextEditingController obs_especifique_pic_r = TextEditingController();
  static TextEditingController obs_especifique_totems_a_t =
      TextEditingController();
  static TextEditingController obs_especifique_totems_s =
      TextEditingController();
  static TextEditingController obs_especifique_totems_d =
      TextEditingController();
  static TextEditingController obs_especifique_pic_a_n_N =
      TextEditingController();
  static TextEditingController obs_especifique_pic_a_t_N =
      TextEditingController();
  static TextEditingController obs_especifique_pic_r_N =
      TextEditingController();
  static TextEditingController obs_especifique_seniales_t_a =
      TextEditingController();
  static TextEditingController obs_especifique_paneles_d_a =
      TextEditingController();
  static TextEditingController obs_especifique_panel_i_a =
      TextEditingController();
  static TextEditingController obs_especifique_panel_i_d =
      TextEditingController();
  static TextEditingController obs_especifique_mesas_i =
      TextEditingController();
  static TextEditingController obs_especifique_totems_s_N =
      TextEditingController();
  static TextEditingController obs_especifique_totem_d =
      TextEditingController();
  static TextEditingController obs_especifique_letrero_i_b =
      TextEditingController();
  static TextEditingController obs_especifique_normativos_c =
      TextEditingController();
  static TextEditingController obs_otros_senialetica_texto =
      TextEditingController();
  static TextEditingController obs_observaciones_senialetica =
      TextEditingController();
  static TextEditingController obs_salud_observaciones =
      TextEditingController();
  static TextEditingController obs_seguridad_policia_nacional_detalle =
      TextEditingController();
  static TextEditingController obs_seguridad_policia_municipal_detalle =
      TextEditingController();
  static TextEditingController obs_seguridad_otra_detalle =
      TextEditingController();
  static TextEditingController obs_seguridad_observaciones =
      TextEditingController();
  static TextEditingController obs_servicio_observaciones =
      TextEditingController();
  static TextEditingController obs_servicio_radio_observaciones =
      TextEditingController();
  static TextEditingController obs_multiamenaza_institucion_doc =
      TextEditingController();
  static TextEditingController obs_multiamenaza_nombre_doc =
      TextEditingController();
  static TextEditingController obs_multiamenazas_observaciones =
      TextEditingController();
  static TextEditingController obs_especifique_agua_ciudad =
      TextEditingController();
  static TextEditingController obs_especifique_desechos_ciudad =
      TextEditingController();
  static TextEditingController obs_pic_a_n_madera = TextEditingController();
  static TextEditingController obs_pic_a_n_aluminio = TextEditingController();
  static TextEditingController obs_pic_a_n_otro = TextEditingController();
  static TextEditingController obs_pic_a_c_madera = TextEditingController();
  static TextEditingController obs_pic_a_c_aluminio = TextEditingController();
  static TextEditingController obs_pic_a_c_otro = TextEditingController();
  static TextEditingController obs_pic_a_t_madera = TextEditingController();
  static TextEditingController obs_pic_a_t_aluminio = TextEditingController();
  static TextEditingController obs_pic_a_t_otro = TextEditingController();
  static TextEditingController obs_pic_s_a_madera = TextEditingController();
  static TextEditingController obs_pic_s_a_aluminio = TextEditingController();
  static TextEditingController obs_pic_s_a_otro = TextEditingController();
  static TextEditingController obs_pic_r_madera = TextEditingController();
  static TextEditingController obs_pic_r_aluminio = TextEditingController();
  static TextEditingController obs_pic_r_otro = TextEditingController();
  static TextEditingController obs_totems_a_t_madera = TextEditingController();
  static TextEditingController obs_totems_a_t_aluminio =
      TextEditingController();
  static TextEditingController obs_totems_a_t_otro = TextEditingController();
  static TextEditingController obs_totems_s_madera = TextEditingController();
  static TextEditingController obs_totems_s_aluminio = TextEditingController();
  static TextEditingController obs_totems_s_otro = TextEditingController();
  static TextEditingController obs_totems_d_madera = TextEditingController();
  static TextEditingController obs_totems_d_aluminio = TextEditingController();
  static TextEditingController obs_totems_d_otro = TextEditingController();
  static TextEditingController obs_pic_a_n_madera_N = TextEditingController();
  static TextEditingController obs_pic_a_n_aluminio_N = TextEditingController();
  static TextEditingController obs_pic_a_n_otro_N = TextEditingController();
  static TextEditingController obs_pic_a_t_madera_N = TextEditingController();
  static TextEditingController obs_pic_a_t_aluminio_N = TextEditingController();
  static TextEditingController obs_pic_a_t_otro_N = TextEditingController();
  static TextEditingController obs_pic_r_madera_N = TextEditingController();
  static TextEditingController obs_pic_r_alumunio_N = TextEditingController();
  static TextEditingController obs_pic_r_otro_N = TextEditingController();
  static TextEditingController obs_seniales_t_a_madera =
      TextEditingController();
  static TextEditingController obs_seniales_t_a_aluminio =
      TextEditingController();
  static TextEditingController obs_seniales_t_a_otro = TextEditingController();
  static TextEditingController obs_paneles_d_a_madera = TextEditingController();
  static TextEditingController obs_paneles_d_a_aluminio =
      TextEditingController();
  static TextEditingController obs_paneles_d_a_otro = TextEditingController();
  static TextEditingController obs_panel_i_a_madera = TextEditingController();
  static TextEditingController obs_panel_i_a_aluminio = TextEditingController();
  static TextEditingController obs_panel_i_a_otro = TextEditingController();
  static TextEditingController obs_panel_i_d_madera = TextEditingController();
  static TextEditingController obs_panel_i_d_aluminio = TextEditingController();
  static TextEditingController obs_panel_i_d_otro = TextEditingController();
  static TextEditingController obs_mesas_i_madera = TextEditingController();
  static TextEditingController obs_mesas_i_aluminio = TextEditingController();
  static TextEditingController obs_mesas_i_otro = TextEditingController();
  static TextEditingController obs_totems_s_madera_N = TextEditingController();
  static TextEditingController obs_totems_s_aluminio_N =
      TextEditingController();
  static TextEditingController obs_totems_s_otro_N = TextEditingController();
  static TextEditingController obs_totem_d_madera = TextEditingController();
  static TextEditingController obs_totem_d_aluminio = TextEditingController();
  static TextEditingController obs_totem_d_otro = TextEditingController();
  static TextEditingController obs_letrero_i_b_madera = TextEditingController();
  static TextEditingController obs_letrero_i_b_aluminio =
      TextEditingController();
  static TextEditingController obs_letrero_i_b_otro = TextEditingController();
  static TextEditingController obs_normativos_c_madera =
      TextEditingController();
  static TextEditingController obs_normativos_c_aluminio =
      TextEditingController();
  static TextEditingController obs_normativos_c_otro = TextEditingController();
  static TextEditingController obs_pic_a_c_madera_N = TextEditingController();
  static TextEditingController obs_pic_a_c_aluminio_N = TextEditingController();
  static TextEditingController obs_pic_a_c_otro_N = TextEditingController();
  static TextEditingController obs_especifique_pic_a_c_N =
      TextEditingController();
  static TextEditingController obs_pic_s_a_madera_N = TextEditingController();
  static TextEditingController obs_pic_s_a_aluminio_N = TextEditingController();
  static TextEditingController obs_pic_s_a_otro_N = TextEditingController();
  static TextEditingController obs_especifique_pic_s_a_N =
      TextEditingController();
  static TextEditingController obs_proteccion_elementos_madera =
      TextEditingController();
  static TextEditingController obs_proteccion_elementos_aluminio =
      TextEditingController();
  static TextEditingController obs_proteccion_elementos_otro =
      TextEditingController();
  static TextEditingController obs_especifique_proteccion =
      TextEditingController();
  static TextEditingController obs_atractivo_hospital = TextEditingController();
  static TextEditingController obs_atractivo_centro = TextEditingController();
  static TextEditingController obs_atractivo_dispensario =
      TextEditingController();
  static TextEditingController obs_atractivo_botiquin = TextEditingController();
  static TextEditingController obs_atractivo_otros = TextEditingController();
  static TextEditingController obs_ciudad_hospital = TextEditingController();
  static TextEditingController obs_ciudad_centro = TextEditingController();
  static TextEditingController obs_ciudad_dispensario = TextEditingController();
  static TextEditingController obs_ciudad_botiqui = TextEditingController();
  static TextEditingController obs_ciudad_otro = TextEditingController();
  static TextEditingController obs_seguridad_privada = TextEditingController();
  static TextEditingController obs_seguridad_policia_nacional =
      TextEditingController();
  static TextEditingController obs_seguridad_policia_municipal =
      TextEditingController();
  static TextEditingController obs_seguridad_otra = TextEditingController();

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
  String especifique_saneamiento_atractivo =
      obs_saneamiento_atractivo.toString();
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
  String especifique_desechos_ciudad =
      obs_especifique_desechos_ciudad.toString();
  //
  bool senialeticas_atarctivo = false;
  bool areas_urbanas = false;
  String pic_a_n_madera = obs_pic_a_n_madera.toString();
  String pic_a_n_aluminio = obs_pic_a_n_aluminio.toString();
  String pic_a_n_otro = obs_pic_a_n_otro.toString();
  String especifique_pic_a_n = obs_especifique_pic.toString();
  bool pic_a_n_bueno = false;
  bool pic_a_n_regular = false;
  bool pic_a_n_malo = false;
  String pic_a_c_madera = obs_pic_a_c_madera.toString();
  String pic_a_c_aluminio = obs_pic_a_c_aluminio.toString();
  String pic_a_c_otro = obs_pic_a_c_otro.toString();
  String especifique_pic_a_c = obs_especifique_pic_a_c.toString();
  bool pic_a_c_bueno = false;
  bool pic_a_c_regular = false;
  bool pic_a_c_malo = false;
  String pic_a_t_madera = obs_pic_a_t_madera.toString();
  String pic_a_t_aluminio = obs_pic_a_t_aluminio.toString();
  String pic_a_t_otro = obs_pic_a_t_otro.toString();
  String especifique_pic_a_t = obs_especifique_pic_a_t.toString();
  bool pic_a_t_bueno = false;
  bool pic_a_t_regular = false;
  bool pic_a_t_malo = false;
  String pic_s_a_madera = obs_pic_s_a_madera.toString();
  String pic_s_a_aluminio = obs_pic_s_a_aluminio.toString();
  String pic_s_a_otro = obs_pic_s_a_otro.toString();
  String especifique_pic_s_a = obs_especifique_pic_s_a.toString();
  bool pic_s_a_bueno = false;
  bool pic_s_a_regular = false;
  bool pic_s_a_malo = false;
  String pic_r_madera = obs_pic_r_madera.toString();
  String pic_r_aluminio = obs_pic_r_aluminio.toString();
  String pic_r_otro = obs_pic_r_otro.toString();
  String especifique_pic_r = obs_especifique_pic_r.toString();
  bool pic_r_bueno = false;
  bool pic_r_regular = false;
  bool pic_r_malo = false;
  String totems_a_t_madera = obs_totems_a_t_madera.toString();
  String totems_a_t_aluminio = obs_totems_a_t_aluminio.toString();
  String totems_a_t_otro = obs_totems_a_t_otro.toString();
  String especifique_totems_a_t = obs_especifique_totems_a_t.toString();
  bool totems_a_t_bueno = false;
  bool totems_a_t_regular = false;
  bool totems_a_t_malo = false;
  String totems_s_madera = obs_totems_s_madera.toString();
  String totems_s_aluminio = obs_totems_s_aluminio.toString();
  String totems_s_otro = obs_totems_s_otro.toString();
  String especifique_totems_s = obs_especifique_totems_s.toString();
  bool totems_s_bueno = false;
  bool totems_s_regular = false;
  bool totems_s_malo = false;
  String totems_d_madera = obs_totems_d_madera.toString();
  String totems_d_aluminio = obs_totems_d_aluminio.toString();
  String totems_d_otro = obs_totems_d_otro.toString();
  String especifique_totems_d = obs_especifique_totems_d.toString();
  bool totems_d_bueno = false;
  bool totems_d_regular = false;
  bool totems_d_malo = false;
  bool areas_naturales = false;
  String pic_a_n_madera_N = obs_pic_a_n_madera_N.toString();
  String pic_a_n_aluminio_N = obs_pic_a_n_aluminio_N.toString();
  String pic_a_n_otro_N = obs_pic_a_n_otro_N.toString();
  String especifique_pic_a_n_N = obs_especifique_pic_a_n_N.toString();
  bool pic_a_n_bueno_N = false;
  bool pic_a_n_regular_N = false;
  bool pic_a_n_malo_N = false;
  bool pic_a_c_bueno_N = false;
  bool pic_a_c_regular_N = false;
  bool pic_a_c_malo_N = false;
  bool pic_a_t_bueno_N = false;
  bool pic_a_t_regular_N = false;
  bool pic_a_t_malo_N = false;
  String pic_a_t_madera_N = obs_pic_a_t_madera_N.toString();
  String pic_a_t_aluminio_N = obs_pic_a_t_aluminio_N.toString();
  String pic_a_t_otro_N = obs_pic_a_t_otro_N.toString();
  String especifique_pic_a_t_N = obs_especifique_pic_a_t_N.toString();
  bool pic_s_a_bueno_N = false;
  bool pic_s_a_regular_N = false;
  bool pic_s_a_malo_N = false;
  String pic_r_madera_N = obs_pic_r_madera_N.toString();
  String pic_r_alumunio_N = obs_pic_r_alumunio_N.toString();
  String pic_r_otro_N = obs_pic_r_otro_N.toString();
  String especifique_pic_r_N = obs_especifique_pic_r_N.toString();
  bool pic_r_bueno_N = false;
  bool pic_r_regular_N = false;
  bool pic_r_malo_N = false;
  String seniales_t_a_madera = obs_seniales_t_a_madera.toString();
  String seniales_t_a_aluminio = obs_seniales_t_a_aluminio.toString();
  String seniales_t_a_otro = obs_seniales_t_a_otro.toString();
  String especifique_seniales_t_a = obs_especifique_seniales_t_a.toString();
  bool seniales_t_a_bueno = false;
  bool seniales_t_a_regular = false;
  bool seniales_t_a_malo = false;
  String paneles_d_a_madera = obs_paneles_d_a_madera.toString();
  String paneles_d_a_aluminio = obs_paneles_d_a_aluminio.toString();
  String paneles_d_a_otro = obs_paneles_d_a_otro.toString();
  String especifique_paneles_d_a = obs_especifique_paneles_d_a.toString();
  bool paneles_d_a_bueno = false;
  bool paneles_d_a_regular = false;
  bool paneles_d_a_malo = false;
  String panel_i_a_madera = obs_panel_i_a_madera.toString();
  String panel_i_a_aluminio = obs_panel_i_a_aluminio.toString();
  String panel_i_a_otro = obs_panel_i_a_otro.toString();
  String especifique_panel_i_a = obs_especifique_panel_i_a.toString();
  bool panel_i_a_bueno = false;
  bool panel_i_a_regular = false;
  bool panel_i_a_malo = false;
  String panel_i_d_madera = obs_panel_i_d_madera.toString();
  String panel_i_d_aluminio = obs_panel_i_d_aluminio.toString();
  String panel_i_d_otro = obs_panel_i_d_otro.toString();
  String especifique_panel_i_d = obs_especifique_panel_i_d.toString();
  bool panel_i_d_bueno = false;
  bool panel_i_d_regular = false;
  bool panel_i_d_malo = false;
  String mesas_i_madera = obs_mesas_i_madera.toString();
  String mesas_i_aluminio = obs_mesas_i_aluminio.toString();
  String mesas_i_otro = obs_mesas_i_otro.toString();
  String especifique_mesas_i = obs_especifique_mesas_i.toString();
  bool mesas_i_bueno = false;
  bool mesas_i_regular = false;
  bool mesas_i_malo = false;
  String totems_s_madera_N = obs_totems_s_madera_N.toString();
  String totems_s_aluminio_N = obs_totems_s_aluminio_N.toString();
  String totems_s_otro_N = obs_totems_s_otro_N.toString();
  String especifique_totems_s_N = obs_especifique_totems_s_N.toString();
  bool totems_s_bueno_N = false;
  bool totems_s_regular_N = false;
  bool totems_s_malo_N = false;
  String totem_d_madera = obs_totem_d_madera.toString();
  String totem_d_aluminio = obs_totem_d_aluminio.toString();
  String totem_d_otro = obs_totem_d_otro.toString();
  String especifique_totem_d = obs_especifique_totem_d.toString();
  bool totem_d_bueno = false;
  bool totem_d_regular = false;
  bool totem_d_malo = false;
  bool letreros_informativos = false;
  String letrero_i_b_madera = obs_letrero_i_b_madera.toString();
  String letrero_i_b_aluminio = obs_letrero_i_b_aluminio.toString();
  String letrero_i_b_otro = obs_letrero_i_b_otro.toString();
  String especifique_letrero_i_b = obs_especifique_letrero_i_b.toString();
  bool letrero_i_b_bueno = false;
  bool letrero_i_b_regular = false;
  bool letrero_i_b_malo = false;
  String normativos_c_madera = obs_normativos_c_madera.toString();
  String normativos_c_aluminio = obs_normativos_c_aluminio.toString();
  String normativos_c_otro = obs_normativos_c_otro.toString();
  String especifique_normativos_c = obs_especifique_normativos_c.toString();
  bool normativos_c_bueno = false;
  bool normativos_c_regular = false;
  bool normativos_c_malo = false;
  bool otros_senialetica = false;
  String otros_senialetica_texto = obs_otros_senialetica_texto.toString();
  String observaciones_senialetica = obs_observaciones_senialetica.toString();
  bool senialetica_interna = false;
  String proteccion_elementos_madera =
      obs_proteccion_elementos_madera.toString();
  String proteccion_elementos_aluminio =
      obs_proteccion_elementos_aluminio.toString();
  String proteccion_elementos_otro = obs_proteccion_elementos_otro.toString();
  String especifique_proteccion = obs_especifique_proteccion.toString();
  bool proteccion_bueno = false;
  bool proteccion_regular = false;
  bool proteccion_malo = false;
  //
  bool salud_cercana = false;
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
  String seguridad_privada_detalle = obs_seguridad_privada.text;
  String seguridad_policia_nacional_detalle =
      obs_seguridad_policia_nacional.text;
  String seguridad_policia_municipal_detalle =
      obs_seguridad_policia_municipal.text;
  String seguridad_otra_detalle = obs_seguridad_otra.text;
  bool seguridad_M = false;
  bool seguridad_privada = false;
  bool seguridad_policia_nacional = false;
  bool seguridad_policia_municipal = false;
  bool seguridad_otra = false;
  String seguridad_observaciones = obs_seguridad_observaciones.toString();
  //
  String num_atractivo_centro = obs_atractivo_centro.toString();
  String num_atractivo_hospital = obs_atractivo_hospital.toString();
  String num_atractivo_dispensario = obs_atractivo_dispensario.toString();
  String num_atractivo_botiquin = obs_atractivo_botiquin.text;
  String num_atractivo_otros = obs_atractivo_otros.text;
  String num_ciudad_hospital = obs_ciudad_hospital.text;
  String num_ciudad_centro = obs_ciudad_centro.text;
  String num_ciudad_dispensario = obs_ciudad_dispensario.text;
  String num_ciudad_botiquin = obs_ciudad_botiqui.text;
  String num_ciudad_otros = obs_ciudad_otro.text;
  bool servicio_publico = false;
  bool servicio_atractivo = false;
  bool servicio_ciudad = false;
  bool servicio_atractivo_telefonia = false;
  bool servicio_atractivo_internet = false;
  bool servicio_atractivo_t_fija = false;
  bool servicio_atractivo_t_movil = false;
  bool servicio_atractivo_t_satelital = false;
  bool servicio_atractivo_i_fibra = false;
  bool servicio_atractivo_i_satelite = false;
  bool servicio_atractivo_i_redes = false;
  bool servicio_atractivo_i_telefonia = false;
  bool servicio_ciudad_telefonia = false;
  bool servicio_ciudad_internet = false;
  bool servicio_ciudad_t_fija = false;
  bool servicio_ciudad_t_movil = false;
  bool servicio_ciudad_t_satelital = false;
  bool servicio_atractivo_i_linea = false;
  bool servicio_ciudad_i_linea = false;
  bool servicio_ciudad_i_fibra = false;
  bool servicio_ciudad_i_satelite = false;
  bool servicio_ciudad_i_redes = false;
  bool servicio_ciudad_i_telefonia = false;
  String servicio_observaciones = obs_servicio_observaciones.toString();
  bool servicio_radio = false;
  bool servicio_radio_exclusivo = false;
  bool servicio_radio_interna = false;
  bool servicio_radio_emergencia = false;
  String servicio_radio_observaciones =
      obs_servicio_radio_observaciones.toString();
  //
  bool multiamenaza_M = false;
  bool multiamenaza_deslaves = false;
  bool multiamenaza_sismos = false;
  bool multiamenaza_erupciones = false;
  bool multiamenaza_incendios = false;
  bool multiamenaza_sequia = false;
  bool multiamenaza_inundaciones = false;
  bool multiamenaza_aguajes = false;
  bool multiamenazas_tsunami = false;
  bool multiamenaza_plan_contin = false;
  String multiamenaza_institucion_doc =
      obs_multiamenaza_institucion_doc.toString();
  String multiamenaza_nombre_doc = obs_multiamenaza_nombre_doc.toString();
  String multiamenazas_observaciones =
      obs_multiamenazas_observaciones.toString();
  DateTime multiamenaza_anio = DateTime.now();

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

  @override
  Widget build(BuildContext context) {
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
        /*
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            //Navigator.pushNamed(context, TableTurism6_2.ROUTE);
            _sendData(context);
            //Navigator.pop(context);
            //print(widget.si_estado_conservacion);
            //print("Valor del string: "+widget.observaciones_atractivo_U);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

         */
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('7. HIGIENE Y SEGURIDAD TURÍSTICA',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
        ),
        body: ListView(padding: EdgeInsets.all(5.0), children: <Widget>[
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
                    value: this.si_higiene_turistica,
                    onChanged: (value) {
                      setState(() {
                        this.si_higiene_turistica = value!;
                        if (this.si_higiene_turistica == true) {
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
                    value: this.no_higiene_turistica,
                    onChanged: (value) {
                      setState(() {
                        this.no_higiene_turistica = value!;
                        if (this.no_higiene_turistica == true) {
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
              "7.1 SERVICI0 BÁSICO",
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
                if (this.servicio_basico == true) {
                  _showAlertDialogSi(context);
                }
              });
            },
          ),
          new Container(
            margin: EdgeInsets.all(8.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
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
                            if (this.atractivo_servicio_basico == true) {
                              _showAlertDialogTable(context);
                            }
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
                            if (this.ciudad_poblado_servicio_basico == true) {
                              _showAlertDialogTable(context);
                            }
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(children: [
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
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.agua_atractivo,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.agua_ciudad,
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
                ]),
                TableRow(children: [
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
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.energia_atractivo,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.energia_ciudad,
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
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Saneamiento",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
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
                            fontSize: 14,
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
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.saneamiento_atractivo,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.saneamiento_ciudad,
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
                ]),
                TableRow(children: [
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
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled:this.desechos_atractivo,
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
                          children: <Widget>[
                            SizedBox(
                              height: 1,
                            ),
                            TextField(
                              enabled: this.desechos_ciudad,
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
                ]),
              ],
            ),
          ),
          new Container(
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    enabled: this.si_higiene_turistica && this.si_higiene_turistica,
                    controller: obs_atractivo_ciudad,
                    maxLines: 5,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText:
                          "Ingrese sus observaciones en caso de ser necesarias",
                      labelText: ("Observaciones"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              title: Text(
                "Señalética en el atractivo",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
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
              value: this.senialeticas_atarctivo,
              onChanged: (value) {
                setState(() {
                  this.senialeticas_atarctivo = value!;
                  if (this.senialeticas_atarctivo == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.1 Ambiente",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.1
          new Container(
            child: CheckboxListTile(
              title: Text(
                "En áreas urbanas",
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
              value: this.areas_urbanas,
              onChanged: (value) {
                setState(() {
                  this.areas_urbanas = value!;
                  if (this.areas_urbanas == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ), //CheckBox 7.2.1
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de atractivos naturales",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_n_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_n_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_n_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_pic,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_n_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_n_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_n_regular,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_n_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_n_malo,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_n_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ), //CheckBox 7.2.4
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de atractivos culturales",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_c_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_c_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_c_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_pic_a_c,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_c_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_c_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_c_regular,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_c_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_c_malo,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_c_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de actividades turísticas",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_t_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_t_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_a_t_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_pic_a_t,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_t_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_t_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_t_regular,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_t_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_t_malo,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_t_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de servicios de apoyo",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_s_a_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_s_a_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_s_a_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_pic_s_a,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_s_a_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.pic_s_a_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_s_a_regular,
                    onChanged: (value) {
                      setState(() {
                        this.pic_s_a_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_s_a_malo,
                    onChanged: (value) {
                      setState(() {
                        this.pic_s_a_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de restricción",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_r_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_r_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_pic_r_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_pic_r,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_regular,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_malo,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Tótems de atractivos turísticos",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_a_t_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_a_t_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_a_t_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_totems_a_t,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_a_t_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.totems_a_t_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_a_t_regular,
                    onChanged: (value) {
                      setState(() {
                        this.totems_a_t_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_a_t_malo,
                    onChanged: (value) {
                      setState(() {
                        this.totems_a_t_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Tótems de sitio",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_s_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_s_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_s_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_totems_s,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_s_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.totems_s_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_s_regular,
                    onChanged: (value) {
                      setState(() {
                        this.totems_s_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_s_malo,
                    onChanged: (value) {
                      setState(() {
                        this.totems_s_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Tótems direccionales",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_d_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_d_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_urbanas,
                      controller: obs_totems_d_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_urbanas,
                    controller: obs_especifique_totems_d,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_d_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.totems_d_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_d_regular,
                    onChanged: (value) {
                      setState(() {
                        this.totems_d_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_d_malo,
                    onChanged: (value) {
                      setState(() {
                        this.totems_d_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            child: CheckboxListTile(
              title: Text(
                "En áreas naturales",
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
              value: this.areas_naturales,
              onChanged: (value) {
                setState(() {
                  this.areas_naturales = value!;
                  if (this.areas_naturales == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ), //CheckBox 7.2.1
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de atractivos naturales",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_n_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_n_aluminio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_n_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_pic_a_n_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_n_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_n_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_n_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_n_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_n_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_n_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de atractivos culturales",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_c_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_c_aluminio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_c_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_pic_a_c_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_c_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_c_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_c_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_c_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_c_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_c_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de atractivos turísticos",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_t_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_t_aluminio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_a_t_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_pic_a_t_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_t_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_t_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_t_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_t_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_a_t_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_a_t_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de servicios de apoyo",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_s_a_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_s_a_aluminio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_s_a_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_pic_s_a_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_s_a_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_s_a_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_s_a_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_s_a_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_s_a_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_s_a_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Pictograma de restricción",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_r_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_r_alumunio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_r_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_pic_r_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Señales turísticas de aproximación",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_seniales_t_a_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_seniales_t_a_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_seniales_t_a_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_seniales_t_a,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.seniales_t_a_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.seniales_t_a_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.seniales_t_a_regular,
                    onChanged: (value) {
                      setState(() {
                        this.seniales_t_a_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.seniales_t_a_malo,
                    onChanged: (value) {
                      setState(() {
                        this.seniales_t_a_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Paneles de direccionamiento hacia atractivos",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_paneles_d_a_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_paneles_d_a_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_paneles_d_a_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_paneles_d_a,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.paneles_d_a_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.paneles_d_a_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.paneles_d_a_regular,
                    onChanged: (value) {
                      setState(() {
                        this.paneles_d_a_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.paneles_d_a_malo,
                    onChanged: (value) {
                      setState(() {
                        this.paneles_d_a_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Panel informativo de atractivos",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_panel_i_a_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_panel_i_a_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_panel_i_a_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_panel_i_a,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.panel_i_a_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.panel_i_a_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.panel_i_a_regular,
                    onChanged: (value) {
                      setState(() {
                        this.panel_i_a_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.panel_i_a_malo,
                    onChanged: (value) {
                      setState(() {
                        this.panel_i_a_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Panel informativo de direccionamiento hacia atractivos, servicios y actividades",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_r_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_r_alumunio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_pic_r_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_pic_r_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.pic_r_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.pic_r_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Mesas interpretativas",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_mesas_i_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_mesas_i_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_mesas_i_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_mesas_i,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.mesas_i_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.mesas_i_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.mesas_i_regular,
                    onChanged: (value) {
                      setState(() {
                        this.mesas_i_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.mesas_i_malo,
                    onChanged: (value) {
                      setState(() {
                        this.mesas_i_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Tótems de sitio",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_totems_s_madera_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_totems_s_aluminio_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_totems_s_otro_N,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_totems_s_N,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_s_bueno_N,
                    onChanged: (value) {
                      setState(() {
                        this.totems_s_bueno_N = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_s_regular_N,
                    onChanged: (value) {
                      setState(() {
                        this.totems_s_regular_N = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totems_s_malo_N,
                    onChanged: (value) {
                      setState(() {
                        this.totems_s_malo_N = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Tótem de direccionamiento",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_totems_d_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_totems_d_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.areas_naturales,
                      controller: obs_totems_d_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.areas_naturales,
                    controller: obs_especifique_totem_d,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totem_d_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.totem_d_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totem_d_regular,
                    onChanged: (value) {
                      setState(() {
                        this.totem_d_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.totem_d_malo,
                    onChanged: (value) {
                      setState(() {
                        this.totem_d_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            child: CheckboxListTile(
              title: Text(
                "Letreros informativos",
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
              value: this.letreros_informativos,
              onChanged: (value) {
                setState(() {
                  this.letreros_informativos = value!;
                  if (this.letreros_informativos == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ), //CheckBox 7.2.1
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "De información botánica",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.letreros_informativos,
                      controller: obs_letrero_i_b_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.letreros_informativos,
                      controller: obs_letrero_i_b_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.letreros_informativos,
                      controller: obs_letrero_i_b_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.letreros_informativos,
                    controller: obs_especifique_letrero_i_b,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.letrero_i_b_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.letrero_i_b_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.letrero_i_b_regular,
                    onChanged: (value) {
                      setState(() {
                        this.letrero_i_b_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.letrero_i_b_malo,
                    onChanged: (value) {
                      setState(() {
                        this.letrero_i_b_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Normativos de concientización",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.letreros_informativos,
                      controller: obs_normativos_c_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.letreros_informativos,
                      controller: obs_normativos_c_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.letreros_informativos,
                      controller: obs_normativos_c_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.letreros_informativos,
                    controller: obs_especifique_normativos_c,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.normativos_c_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.normativos_c_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.normativos_c_regular,
                    onChanged: (value) {
                      setState(() {
                        this.normativos_c_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.normativos_c_malo,
                    onChanged: (value) {
                      setState(() {
                        this.normativos_c_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            child: CheckboxListTile(
              title: Text(
                "Señalética interna de seguridad",
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
              value: this.senialetica_interna,
              onChanged: (value) {
                setState(() {
                  this.senialetica_interna = value!;
                  if (this.senialetica_interna == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ), //CheckBox
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.2 Tipo",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.2
          new Container(
            child: Text(
              "Protección de los elementos del atractivo",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: HexColor("#364C59"),
              ),
            ),
          ), //Subtitulo 7.2.2
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.3 Materialidad",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ), //Titulo 7.2.3
          new Container(
            margin: EdgeInsets.all(15.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.senialetica_interna,
                      controller: obs_proteccion_elementos_madera,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " a. Madera",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.senialetica_interna,
                      controller: obs_proteccion_elementos_aluminio,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " b. Aluminio",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                  Column(children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      enabled: this.senialetica_interna,
                      controller: obs_proteccion_elementos_otro,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: " c. Otro",
                        hintText: "Ingrese número",
                      ),
                    )
                  ]),
                ]),
              ],
            ),
          ), //Opciones madera,...
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.senialetica_interna,
                    controller: obs_especifique_proteccion,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para la casilla 'Otros'"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ), //Formulario
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Text(
                        "7.2.4 Estado",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ), //Titulo 7.2.4
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: CheckboxListTile(
                    tristate: false,
                    title: Text(
                      "B",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.proteccion_bueno,
                    onChanged: (value) {
                      setState(() {
                        this.proteccion_bueno = value!;
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
                      "R",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.proteccion_regular,
                    onChanged: (value) {
                      setState(() {
                        this.proteccion_regular = value!;
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
                      "M",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    value: this.proteccion_malo,
                    onChanged: (value) {
                      setState(() {
                        this.proteccion_malo = value!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          new Container(
            child: CheckboxListTile(
              title: Text(
                "Otros",
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
              value: this.otros_senialetica,
              onChanged: (value) {
                setState(() {
                  this.otros_senialetica = value!;
                  if (this.otros_senialetica == true) {
                    _showAlertDialogObservaciones(context);
                  }
                });
              },
            ),
          ), //CheckBox
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: this.otros_senialetica,
                    controller: obs_otros_senialetica_texto,
                    maxLines: 3,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: HexColor("#99AD8F"),
                    ),
                    decoration: InputDecoration(
                      icon: Icon(Icons.input_outlined),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Ingrese sus especificaciones",
                      labelText: ("Especificaciones para más señaléticas"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                    ),
                  )
                ],
              ),
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Observaciones",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.senialeticas_atarctivo && this.si_higiene_turistica,
                          controller: obs_observaciones_senialetica,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              title: Text(
                "Salud (más cercano)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
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
              value: this.salud_cercana,
              onChanged: (value) {
                setState(() {
                  this.salud_cercana = value!;
                  if (this.salud_cercana == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              title: Text(
                "a. En el atractivo",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
              value: this.salud_atractivo,
              onChanged: (value) {
                setState(() {
                  this.salud_atractivo = value!;
                  if (this.salud_atractivo == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Hospital o Clínica",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.atractivo_hospital,
                  onChanged: (value) {
                    setState(() {
                      this.atractivo_hospital = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.atractivo_hospital,
                          keyboardType: TextInputType.number,
                          controller: obs_atractivo_hospital,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Puesto/Centro de salud",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.atractivo_centro,
                  onChanged: (value) {
                    setState(() {
                      this.atractivo_centro = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.atractivo_centro,
                          keyboardType: TextInputType.number,
                          controller: obs_atractivo_centro,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Dispensario médico",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.atractivo_dispensario,
                  onChanged: (value) {
                    setState(() {
                      this.atractivo_dispensario = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.atractivo_dispensario,
                          keyboardType: TextInputType.number,
                          controller: obs_atractivo_dispensario,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Botiquín de primeros auxilios",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.atractivo_botiquin,
                  onChanged: (value) {
                    setState(() {
                      this.atractivo_botiquin = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.atractivo_botiquin,
                          controller: obs_atractivo_botiquin,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Otros",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.atractivo_otros,
                  onChanged: (value) {
                    setState(() {
                      this.atractivo_otros = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.atractivo_otros,
                          controller: obs_atractivo_otros,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              title: Text(
                "b. En la ciudad o poblado mas cercano",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
              value: this.salud_ciudad,
              onChanged: (value) {
                setState(() {
                  this.salud_ciudad = value!;
                  if (this.salud_ciudad == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Hospital o Clínica",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.ciudad_hospital,
                  onChanged: (value) {
                    setState(() {
                      this.ciudad_hospital = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.ciudad_hospital,
                          controller: obs_ciudad_hospital,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Puesto/Centro de salud",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.ciudad_centro,
                  onChanged: (value) {
                    setState(() {
                      this.ciudad_centro = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.ciudad_centro,
                          controller: obs_ciudad_centro,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Dispensario médico",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.ciudad_dispensario,
                  onChanged: (value) {
                    setState(() {
                      this.ciudad_dispensario = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.ciudad_dispensario,
                          controller: obs_ciudad_dispensario,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Botiquín de primeros auxilios",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.ciudad_botiquin,
                  onChanged: (value) {
                    setState(() {
                      this.ciudad_botiquin = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.ciudad_botiquin,
                          controller: obs_ciudad_botiqui,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "Otros",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.ciudad_otros,
                  onChanged: (value) {
                    setState(() {
                      this.ciudad_otros = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: this.ciudad_otros,
                          controller: obs_ciudad_otro,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese cantidad",
                            labelText: ("Cantidad"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Observaciones",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.salud_cercana && this.si_higiene_turistica,
                          controller: obs_salud_observaciones,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              title: Text(
                "Seguridad (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
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
              value: this.seguridad_M,
              onChanged: (value) {
                setState(() {
                  this.seguridad_M = value!;
                  if (this.seguridad_M == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "a. Privada",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.seguridad_privada,
                  onChanged: (value) {
                    setState(() {
                      this.seguridad_privada = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.seguridad_privada,
                          controller: obs_seguridad_privada,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese observación",
                            labelText: ("Observación"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "b. Policía nacional",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.seguridad_policia_nacional,
                  onChanged: (value) {
                    setState(() {
                      this.seguridad_policia_nacional = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.seguridad_policia_nacional,
                          controller: obs_seguridad_policia_nacional,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese observación",
                            labelText: ("Observación"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "c. Policía metropolitana/Municipal",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.seguridad_policia_municipal,
                  onChanged: (value) {
                    setState(() {
                      this.seguridad_policia_municipal = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.seguridad_policia_municipal,
                          controller: obs_seguridad_policia_municipal,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese observación",
                            labelText: ("Observación"),
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
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: CheckboxListTile(
                  title: Text(
                    "d. Otra",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: HexColor("#364C59"),
                    ),
                  ),
                  value: this.seguridad_otra,
                  onChanged: (value) {
                    setState(() {
                      this.seguridad_otra = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.seguridad_otra,
                          controller: obs_seguridad_otra,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese observación",
                            labelText: ("Observación"),
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
            ],
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              title: Text(
                "Servicio de comunicación de uso público (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
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
              value: this.servicio_publico,
              onChanged: (value) {
                setState(() {
                  this.servicio_publico = value!;
                  if (this.servicio_publico == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              title: Text(
                "a. En el atractivo",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
              value: this.servicio_atractivo,
              onChanged: (value) {
                setState(() {
                  this.servicio_atractivo = value!;
                  if (this.servicio_atractivo == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Telefonía (M)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_telefonia,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_telefonia = value!;
                            if (this.servicio_atractivo_telefonia == true) {
                              _showAlertDialogTable(context);
                            }
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Conexión a internet (M)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_internet,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_internet = value!;
                            if (this.servicio_atractivo_internet) {
                              _showAlertDialogTable(context);
                            }
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Fija",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_t_fija,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_t_fija = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Línea telefónica",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_i_linea,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_i_linea = value!;
                          });
                        },
                      ),
                      new CheckboxListTile(
                        title: Text(
                          "Fibra óptica",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_i_fibra,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_i_fibra = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(
                    children: [
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "Móvil",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_atractivo_t_movil,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_atractivo_t_movil = value!;
                              });
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "Satélite",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_atractivo_i_satelite,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_atractivo_i_satelite = value!;
                              });
                            },
                          ),
                          new CheckboxListTile(
                            title: Text(
                              "Redes inalámbricas",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_atractivo_i_redes,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_atractivo_i_redes = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ]
                ),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Satelital",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_t_satelital,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_t_satelital = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Telefonía móvil",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_atractivo_i_telefonia,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_atractivo_i_telefonia = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              title: Text(
                "b. En la ciudad o poblado mas cercano",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
              value: this.servicio_ciudad,
              onChanged: (value) {
                setState(() {
                  this.servicio_ciudad = value!;
                  if (this.servicio_ciudad == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Telefonía (M)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_telefonia,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_telefonia = value!;
                            if (this.servicio_ciudad_telefonia == true) {
                              _showAlertDialogTable(context);
                            }
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Conexión a internet (M)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_internet,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_internet = value!;
                            if (this.servicio_ciudad_internet == true) {
                              _showAlertDialogTable(context);
                            }
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Fija",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_t_fija,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_t_fija = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Línea telefónica",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_i_linea,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_i_linea = value!;
                          });
                        },
                      ),
                      new CheckboxListTile(
                        title: Text(
                          "Fibra óptica",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_i_fibra,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_i_fibra = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(
                    children: [
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "Móvil",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_ciudad_t_movil,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_ciudad_t_movil = value!;
                              });
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "Satélite",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_ciudad_i_satelite,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_ciudad_i_satelite = value!;
                              });
                            },
                          ),
                          new CheckboxListTile(
                            title: Text(
                              "Redes inalámbricas",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_ciudad_i_redes,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_ciudad_i_redes = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ]
                ),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Satelital",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_t_satelital,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_t_satelital = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Telefonía móvil",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_ciudad_i_telefonia,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_ciudad_i_telefonia = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
              ],
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Observaciones",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.servicio_publico && this.si_higiene_turistica,
                          controller: obs_servicio_observaciones,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Radio portátil (U)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_radio,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_radio = value!;
                            if (this.servicio_radio == true) {
                              _showAlertDialogTable(context);
                            }
                          });
                        },
                      )
                    ],
                  ),

                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "De uso exclusivo para el visitante",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_radio_exclusivo,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_radio_exclusivo = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(
                    children: [
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "De uso exclusivo para conunicación interna",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.servicio_radio_interna,
                            onChanged: (value) {
                              setState(() {
                                this.servicio_radio_interna = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ]
                ),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "De uso exclusivo en caso de emergencia",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.servicio_radio_emergencia,
                        onChanged: (value) {
                          setState(() {
                            this.servicio_radio_emergencia = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
              ],
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Observaciones",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.servicio_radio && this.si_higiene_turistica,
                          controller: obs_servicio_radio_observaciones,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              secondary: const Icon(Icons.fact_check_sharp),
              title: Text(
                "Multiamenazas (M)",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
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
              value: this.multiamenaza_M,
              onChanged: (value) {
                setState(() {
                  this.multiamenaza_M = value!;
                  if (this.multiamenaza_M == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Deslaves",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.multiamenaza_deslaves,
                        onChanged: (value) {
                          setState(() {
                            this.multiamenaza_deslaves = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Sismos",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.multiamenaza_sismos,
                        onChanged: (value) {
                          setState(() {
                            this.multiamenaza_sismos = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Erupciones volcánicas",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.multiamenaza_erupciones,
                        onChanged: (value) {
                          setState(() {
                            this.multiamenaza_erupciones = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Incendios forestales",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.multiamenaza_incendios,
                        onChanged: (value) {
                          setState(() {
                            this.multiamenaza_incendios = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
                TableRow(
                    children: [
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "Sequía",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.multiamenaza_sequia,
                            onChanged: (value) {
                              setState(() {
                                this.multiamenaza_sequia = value!;
                              });
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          new CheckboxListTile(
                            title: Text(
                              "Inundaciones",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: HexColor("#364C59"),
                              ),
                            ),
                            value: this.multiamenaza_inundaciones,
                            onChanged: (value) {
                              setState(() {
                                this.multiamenaza_inundaciones = value!;
                              });
                            },
                          )
                        ],
                      ),
                    ]
                ),
                TableRow(children: [
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Aguajes",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.multiamenaza_aguajes,
                        onChanged: (value) {
                          setState(() {
                            this.multiamenaza_aguajes = value!;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      new CheckboxListTile(
                        title: Text(
                          "Tsunami",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: HexColor("#364C59"),
                          ),
                        ),
                        value: this.multiamenazas_tsunami,
                        onChanged: (value) {
                          setState(() {
                            this.multiamenazas_tsunami = value!;
                          });
                        },
                      )
                    ],
                  ),
                ]),
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: CheckboxListTile(
              title: Text(
                "¿Existe un plan de contingencia en caso de catástrofes?",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
              value: this.multiamenaza_plan_contin,
              onChanged: (value) {
                setState(() {
                  this.multiamenaza_plan_contin = value!;
                  if (this.multiamenaza_plan_contin == true) {
                    _showAlertDialogSi(context);
                  }
                });
              },
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Institución que elaboró el documento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.multiamenaza_plan_contin && this.si_higiene_turistica,
                          controller: obs_multiamenaza_institucion_doc,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Nombre del documento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.multiamenaza_plan_contin && this.si_higiene_turistica,
                          controller: obs_multiamenaza_nombre_doc,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Año de elaboración del documento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: false,
                          controller: obs_multiamenaza_nombre_doc,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: currentDate.toString(),
                            labelText: ("[AAAA-MM-DD]\n[" +
                                currentDate.toString() +
                                "]"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          new RaisedButton(
            child: Text("Obtener Fecha"),
            onPressed: () => _selectDate(context),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text("Observaciones",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
              ),
              Flexible(
                child: Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.multiamenaza_M && this.si_higiene_turistica,
                          controller: obs_multiamenazas_observaciones,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
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
              ),
            ],
          ),
      ]),
    ));
  }
/*
  void _sendData(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TableTurism6_2(
                si_estado_conservacion: widget.si_estado_conservacion,
                observaciones_atractivo_U: widget.observaciones_atractivo_U,
                si_higiene_turistica: si_higiene_turistica)));
  }
}


 */
}