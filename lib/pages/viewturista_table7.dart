import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:turismo_flutter/pages/viewturista_table8.dart';

class FormSaveWidget extends StatefulWidget {
  final bool si_estado_conservacion;
  final bool no_estado_conservacion;
  final bool s_i_estado_conservacion;
  final bool atractivo_U;
  final bool conservado_atractivo_U;
  final bool alterado_atractivo_U;
  final bool deterioro_atractivo_U;
  final bool deteriorado_atractivo_U;
  final String observaciones_atractivo_U;
  final bool erosion_M_fac;
  final bool humedad_M_fac;
  final bool desastres_naturales_M_fac;
  final bool flora_fauna_M_fac;
  final bool clima_M_fac;
  final bool actividades_agricolas_M_fac;
  final bool actividades_forestales_M_fac;
  final bool actividades_minera_M_fac;
  final bool actividades_industriales_M_fac;
  final bool neglicencia_M_fac;
  final bool huaqueria_M_fac;
  final bool conflictos_tenencia_M_fac;
  final bool condiciones_uso_M_fac;
  final bool falta_mantenimiento_M_fac;
  final bool contaminacion_ambiente_M_fac;
  final bool generacion_residuos_M_fac;
  final bool expansion_urbana_M_fac;
  final bool conflicto_poliico_social_M_fac;
  final bool desarrollo_industrial_M_fac;
  final bool vandalismo_M_fac;
  final bool otro_M_fac;
  final String especifique_M_fac;
  final String observaciones_M_fac;
  final bool entorno_U;
  final bool conservado_entorno_U;
  final bool alterado_entorno_U;
  final bool deterioro_entorno_U;
  final bool deteriorado_entorno_U;
  final String observaciones_entorno_U;
  final bool erosion_M_ent;
  final bool humedad_M_ent ;
  final bool desastres_naturales_M_ent ;
  final bool flora_fauna_M_ent ;
  final bool clima_M_ent;
  final bool actividades_agricolas_M_ent ;
  final bool actividades_forestales_M_ent;
  final bool actividades_minera_M_ent ;
  final bool actividades_industriales_M_ent ;
  final bool neglicencia_M_ent;
  final bool huaqueria_M_ent ;
  final bool conflictos_tenencia_M_ent ;
  final bool condiciones_uso_M_ent ;
  final bool falta_mantenimiento_M_ent ;
  final bool contaminacion_ambiente_M_ent;
  final bool generacion_residuos_M_ent ;
  final bool expansion_urbana_M_ent ;
  final bool conflicto_poliico_social_M_ent ;
  final bool desarrollo_industrial_M_ent ;
  final bool vandalismo_M_ent ;
  final bool otro_M_ent ;
  final String especifique_M_ent;
  final String observaciones_M_ent;
  final bool declaratoria_espacio;
  final String declarante_espacio;
  final String denominacion_espacio;
  final DateTime fecha_declaracion_espacio;
  final String alcance_espacio;
  final String observaciones_espacio;

  FormSaveWidget(
      {Key? key,
      required this.si_estado_conservacion,
      required this.observaciones_atractivo_U,
      required this.atractivo_U,
      required this.no_estado_conservacion,
      required this.s_i_estado_conservacion,
      required this.conservado_atractivo_U,
      required this.alterado_atractivo_U,
      required this.deterioro_atractivo_U,
      required this.deteriorado_atractivo_U,
      required this.erosion_M_fac,
      required this.humedad_M_fac,
      required this.desastres_naturales_M_fac,
      required this.flora_fauna_M_fac,
      required this.clima_M_fac,
      required this.actividades_agricolas_M_fac,
      required this.actividades_forestales_M_fac,
      required this.actividades_minera_M_fac,
      required this.actividades_industriales_M_fac,
      required this.neglicencia_M_fac,
      required this.huaqueria_M_fac,
      required this.conflictos_tenencia_M_fac,
      required this.condiciones_uso_M_fac,
      required this.falta_mantenimiento_M_fac,
      required this.contaminacion_ambiente_M_fac,
      required this.generacion_residuos_M_fac,
      required this.expansion_urbana_M_fac,
      required this.conflicto_poliico_social_M_fac,
      required this.desarrollo_industrial_M_fac,
      required this.vandalismo_M_fac,
      required this.otro_M_fac,
      required this.especifique_M_fac,
      required this.observaciones_M_fac,
        required this.entorno_U,
        required this.conservado_entorno_U,
        required this.alterado_entorno_U,
        required this.deterioro_entorno_U,
        required this.deteriorado_entorno_U,
        required this.observaciones_entorno_U,
        required this.erosion_M_ent,
        required this.humedad_M_ent,
        required this.desastres_naturales_M_ent,
        required this.flora_fauna_M_ent,
        required this.clima_M_ent,
        required this.actividades_agricolas_M_ent,
        required this.actividades_forestales_M_ent,
        required this.actividades_minera_M_ent,
        required this.actividades_industriales_M_ent,
        required this.neglicencia_M_ent,
        required this.huaqueria_M_ent,
        required this.conflictos_tenencia_M_ent,
        required this.condiciones_uso_M_ent,
        required this.falta_mantenimiento_M_ent,
        required this.contaminacion_ambiente_M_ent,
        required this.generacion_residuos_M_ent,
        required this.expansion_urbana_M_ent,
        required this.conflicto_poliico_social_M_ent,
        required this.desarrollo_industrial_M_ent,
        required this.vandalismo_M_ent,
        required this.otro_M_ent,
        required this.especifique_M_ent,
        required this.observaciones_M_ent,
        required this.declaratoria_espacio,
        required this.declarante_espacio,
        required this.denominacion_espacio,
        required this.fecha_declaracion_espacio,
        required this.alcance_espacio,
        required this.observaciones_espacio


      })
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

  bool salud_ciudad = false;
  bool ciudad_hospital = false;
  bool ciudad_centro = false;
  bool ciudad_dispensario = false;
  bool ciudad_botiquin = false;
  bool ciudad_otros = false;

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
  int optionGroup = 0;
  late int selectedOption;

  void initState() {
    super.initState();
    optionGroup = 0;
    selectedOption = 0;
    obtenerPreferencias();
  }

  setSelectedRadio(int val) {
    setState(() {
      optionGroup = val;
      if (optionGroup == 1) {
        this.si_higiene_turistica = true;
        this.no_higiene_turistica = false;
        this.s_i_higiene_turistica = false;
        if (this.si_higiene_turistica == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup == 2) {
        this.si_higiene_turistica = false;
        this.no_higiene_turistica = true;
        this.s_i_higiene_turistica = false;
        if (this.no_higiene_turistica == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup == 3) {
        this.si_higiene_turistica = false;
        this.no_higiene_turistica = false;
        this.s_i_higiene_turistica = true;
      }
    });
  }

  void _showAlertDialogNo(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(
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
    showDialog<String>(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(
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

  void _showAlertDialogTable(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }

  void _showAlertDialogObservaciones(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

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
                  guardarPreferencias();
                },
              ),
            ],
          ),
          body: ListView(padding: EdgeInsets.all(5.0), children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroup,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 3,
                        groupValue: optionGroup,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )),
                ),
              ],
            ),
            new RaisedButton(
              child: Text("enviar"),
              onPressed: () {
                _sendBDD();
              },
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
                                enabled: this.agua_atractivo &&
                                    this.atractivo_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.agua_ciudad &&
                                    this.ciudad_poblado_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.energia_atractivo &&
                                    this.atractivo_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.energia_ciudad &&
                                    this.ciudad_poblado_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.saneamiento_atractivo &&
                                    this.atractivo_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.saneamiento_ciudad &&
                                    this.ciudad_poblado_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.desechos_atractivo &&
                                    this.atractivo_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                                enabled: this.desechos_ciudad &&
                                    this.ciudad_poblado_servicio_basico &&
                                    this.servicio_basico &&
                                    this.si_higiene_turistica,
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
                      enabled: this.si_higiene_turistica &&
                          this.servicio_basico,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_urbanas &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_urbanas &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_naturales &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.senialeticas_atarctivo &&
                            this.si_higiene_turistica,
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
                      enabled: this.areas_naturales &&
                          this.senialeticas_atarctivo &&
                          this.si_higiene_turistica,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.areas_naturales &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.areas_naturales &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.letreros_informativos &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.letreros_informativos &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.letreros_informativos &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.letreros_informativos &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.letreros_informativos &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.letreros_informativos &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.letreros_informativos &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.letreros_informativos &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                        enabled: this.senialetica_interna &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.senialetica_interna &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                        enabled: this.senialetica_interna &&
                            this.si_higiene_turistica &&
                            this.senialeticas_atarctivo,
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
                      enabled: this.senialetica_interna &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                      enabled: this.otros_senialetica &&
                          this.si_higiene_turistica &&
                          this.senialeticas_atarctivo,
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
                            enabled: this.senialeticas_atarctivo &&
                                this.si_higiene_turistica &&
                                this.senialeticas_atarctivo,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.atractivo_hospital &&
                                this.salud_cercana &&
                                this.salud_atractivo &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.atractivo_centro &&
                                this.salud_cercana &&
                                this.salud_atractivo &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.atractivo_dispensario &&
                                this.salud_cercana &&
                                this.salud_atractivo &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.atractivo_botiquin &&
                                this.salud_cercana &&
                                this.salud_atractivo &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.atractivo_otros &&
                                this.salud_cercana &&
                                this.salud_atractivo &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.ciudad_hospital &&
                                this.salud_cercana &&
                                this.salud_ciudad &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.ciudad_centro &&
                                this.salud_cercana &&
                                this.salud_ciudad &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.ciudad_dispensario &&
                                this.salud_cercana &&
                                this.salud_ciudad &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.ciudad_botiquin &&
                                this.salud_cercana &&
                                this.salud_ciudad &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.ciudad_otros &&
                                this.salud_cercana &&
                                this.salud_ciudad &&
                                this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled:
                            this.salud_cercana && this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.seguridad_privada &&
                                this.si_higiene_turistica &&
                                this.seguridad_M,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.seguridad_policia_nacional &&
                                this.si_higiene_turistica &&
                                this.seguridad_M,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.seguridad_policia_municipal &&
                                this.si_higiene_turistica &&
                                this.seguridad_M,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.seguridad_otra &&
                                this.si_higiene_turistica &&
                                this.seguridad_M,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                  TableRow(children: [
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
                  ]),
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
                  TableRow(children: [
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
                  ]),
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
                            enabled:
                            this.servicio_publico && this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                  TableRow(children: [
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
                  ]),
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
                            enabled:
                            this.servicio_radio && this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                  TableRow(children: [
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
                  ]),
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
                            enabled: this.multiamenaza_plan_contin &&
                                this.si_higiene_turistica &&
                                this.multiamenaza_M,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled: this.multiamenaza_plan_contin &&
                                this.si_higiene_turistica &&
                                this.multiamenaza_M,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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
                            enabled:
                            this.multiamenaza_M && this.si_higiene_turistica,
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
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10))),
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

  void _sendData(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                TableTurism8(
                    si_estado_conservacion: widget.si_estado_conservacion,
                    observaciones_atractivo_U: widget.observaciones_atractivo_U,
                    atractivo_U: widget.atractivo_U,
                    no_estado_conservacion: widget.no_estado_conservacion,
                    s_i_estado_conservacion: widget.s_i_estado_conservacion,
                    conservado_atractivo_U: widget.conservado_atractivo_U,
                    alterado_atractivo_U: widget.alterado_atractivo_U,
                    deterioro_atractivo_U: widget.deterioro_atractivo_U,
                    deteriorado_atractivo_U: widget.deteriorado_atractivo_U,
                    erosion_M_fac: widget.erosion_M_fac,
                    humedad_M_fac: widget.humedad_M_fac,
                    desastres_naturales_M_fac: widget.desastres_naturales_M_fac,
                    flora_fauna_M_fac: widget.flora_fauna_M_fac,
                    clima_M_fac: widget.clima_M_fac,
                    actividades_agricolas_M_fac: widget
                        .actividades_agricolas_M_fac,
                    actividades_forestales_M_fac: widget
                        .actividades_forestales_M_fac,
                    actividades_minera_M_fac: widget.actividades_minera_M_fac,
                    actividades_industriales_M_fac: widget
                        .actividades_industriales_M_fac,
                    neglicencia_M_fac: widget.neglicencia_M_fac,
                    huaqueria_M_fac: widget.huaqueria_M_fac,
                    conflictos_tenencia_M_fac: widget.conflictos_tenencia_M_fac,
                    condiciones_uso_M_fac: widget.condiciones_uso_M_fac,
                    falta_mantenimiento_M_fac: widget.falta_mantenimiento_M_fac,
                    contaminacion_ambiente_M_fac: widget
                        .contaminacion_ambiente_M_fac,
                    generacion_residuos_M_fac: widget.generacion_residuos_M_fac,
                    expansion_urbana_M_fac: widget.expansion_urbana_M_fac,
                    conflicto_poliico_social_M_fac: widget
                        .conflicto_poliico_social_M_fac,
                    desarrollo_industrial_M_fac: widget
                        .desarrollo_industrial_M_fac,
                    vandalismo_M_fac: widget.vandalismo_M_fac,
                    otro_M_fac: widget.otro_M_fac,
                    especifique_M_fac: widget.especifique_M_fac,
                    observaciones_M_fac: widget.observaciones_M_fac,
                    entorno_U: widget.entorno_U,
                    conservado_entorno_U: widget.conservado_entorno_U,
                    alterado_entorno_U: widget.alterado_entorno_U,
                    deterioro_entorno_U: widget.deterioro_entorno_U,
                    deteriorado_entorno_U: widget.deteriorado_entorno_U,
                    observaciones_entorno_U: widget.observaciones_entorno_U,
                    erosion_M_ent: widget.erosion_M_ent,
                    humedad_M_ent: widget.humedad_M_ent,
                    desastres_naturales_M_ent: widget.desastres_naturales_M_ent,
                    flora_fauna_M_ent: widget.flora_fauna_M_ent,
                    clima_M_ent: widget.clima_M_ent,
                    actividades_agricolas_M_ent: widget
                        .actividades_agricolas_M_ent,
                    actividades_forestales_M_ent: widget
                        .actividades_forestales_M_ent,
                    actividades_minera_M_ent: widget.actividades_minera_M_ent,
                    actividades_industriales_M_ent: widget
                        .actividades_industriales_M_ent,
                    neglicencia_M_ent: widget.neglicencia_M_ent,
                    huaqueria_M_ent: widget.huaqueria_M_ent,
                    conflictos_tenencia_M_ent: widget.conflictos_tenencia_M_ent,
                    condiciones_uso_M_ent: widget.condiciones_uso_M_ent,
                    falta_mantenimiento_M_ent: widget.falta_mantenimiento_M_ent,
                    contaminacion_ambiente_M_ent: widget
                        .contaminacion_ambiente_M_ent,
                    generacion_residuos_M_ent: widget.generacion_residuos_M_ent,
                    expansion_urbana_M_ent: widget.expansion_urbana_M_ent,
                    conflicto_poliico_social_M_ent: widget
                        .conflicto_poliico_social_M_ent,
                    desarrollo_industrial_M_ent: widget
                        .desarrollo_industrial_M_ent,
                    vandalismo_M_ent: widget.vandalismo_M_ent,
                    otro_M_ent: widget.otro_M_ent,
                    especifique_M_ent: widget.especifique_M_ent,
                    observaciones_M_ent: widget.observaciones_M_ent,
                    declaratoria_espacio: widget.declaratoria_espacio,
                    declarante_espacio: widget.declarante_espacio,
                    denominacion_espacio: widget.denominacion_espacio,
                    fecha_declaracion_espacio: widget.fecha_declaracion_espacio,
                    alcance_espacio: widget.alcance_espacio,
                    observaciones_espacio: widget.observaciones_espacio,
                    si_higiene_turistica: si_higiene_turistica,
                    no_higiene_turistica: no_higiene_turistica,
                    s_i_higiene_turistica: s_i_higiene_turistica,
                    servicio_basico: servicio_basico,
                    atractivo_servicio_basico: atractivo_servicio_basico,
                    agua_servicio: agua_servicio,
                    especifique_agua_atractivo: especifique_agua_atractivo,
                    agua_atractivo: agua_atractivo,
                    energia_atractivo: energia_atractivo,
                    energia_ciudad: energia_ciudad,
                    especifique_energia_atractivo: especifique_energia_atractivo,
                    saneamiento_atractivo: saneamiento_atractivo,
                    especifique_saneamiento_atractivo: especifique_saneamiento_atractivo,
                    desechos_atractivo: desechos_atractivo,
                    especifique_desechos_atractivo: especifique_desechos_atractivo,
                    onservaciones_atractivo_ciudad: onservaciones_atractivo_ciudad,
                    ciudad_poblado_servicio_basico: ciudad_poblado_servicio_basico,
                    agua_ciudad: agua_ciudad,
                    especifique_agua_ciudad: especifique_agua_ciudad,
                    especifique_energia_ciudad: especifique_energia_ciudad,
                    saneamiento_ciudad: saneamiento_ciudad,
                    especifique_saneamiento_ciudad: especifique_saneamiento_ciudad,
                    desechos_ciudad: desechos_ciudad,
                    especifique_desechos_ciudad: especifique_desechos_ciudad,
                    senialeticas_atarctivo: senialeticas_atarctivo,
                    areas_urbanas: areas_urbanas,
                    pic_a_n_madera: pic_a_n_madera,
                    pic_a_n_aluminio: pic_a_n_aluminio,
                    pic_a_n_otro: pic_a_n_otro,
                    especifique_pic_a_n: especifique_pic_a_n,
                    pic_a_n_bueno: pic_a_n_bueno,
                    pic_a_n_regular: pic_a_n_regular,
                    pic_a_n_malo: pic_a_n_malo,
                    pic_a_c_madera: pic_a_c_madera,
                    pic_a_c_aluminio: pic_a_c_aluminio,
                    pic_a_c_otro: pic_a_c_otro,
                    especifique_pic_a_c: especifique_pic_a_c,
                    pic_a_c_bueno: pic_a_c_bueno,
                    pic_a_c_regular: pic_a_c_regular,
                    pic_a_c_malo: pic_a_c_malo,
                    pic_a_t_madera: pic_a_t_madera,
                    pic_a_t_aluminio: pic_a_t_aluminio,
                    pic_a_t_otro: pic_a_t_otro,
                    especifique_pic_a_t: especifique_pic_a_t,
                    pic_a_t_bueno: pic_a_t_bueno,
                    pic_a_t_regular: pic_a_t_regular,
                    pic_a_t_malo: pic_a_t_malo,
                    pic_s_a_madera: pic_s_a_madera,
                    pic_s_a_aluminio: pic_s_a_aluminio,
                    pic_s_a_otro: pic_s_a_otro,
                    especifique_pic_s_a: especifique_pic_s_a,
                    pic_s_a_bueno: pic_s_a_bueno,
                    pic_s_a_regular: pic_s_a_regular,
                    pic_s_a_malo: pic_s_a_malo,
                    pic_r_madera: pic_r_madera,
                    pic_r_aluminio: pic_r_aluminio,
                    pic_r_otro: pic_r_otro,
                    especifique_pic_r: especifique_pic_r,
                    pic_r_bueno: pic_r_bueno,
                    pic_r_regular: pic_r_regular,
                    pic_r_malo: pic_r_malo,
                    totems_a_t_madera: totems_a_t_madera,
                    totems_a_t_aluminio: totems_a_t_aluminio,
                    totems_a_t_otro: totems_a_t_otro,
                    especifique_totems_a_t: especifique_totems_a_t,
                    totems_a_t_bueno: totems_a_t_bueno,
                    totems_a_t_regular: totems_a_t_regular,
                    totems_a_t_malo: totems_a_t_malo,
                    totems_s_madera: totems_s_madera,
                    totems_s_aluminio: totems_s_aluminio,
                    totems_s_otro: totems_s_otro,
                    especifique_totems_s: especifique_totems_s,
                    totems_s_bueno: totems_s_bueno,
                    totems_s_regular: totems_s_regular,
                    totems_s_malo: totems_s_malo,
                    totems_d_madera: totems_d_madera,
                    totems_d_aluminio: totems_d_aluminio,
                    totems_d_otro: totems_d_otro,
                    especifique_totems_d: especifique_totems_d,
                    totems_d_bueno: totems_d_bueno,
                    totems_d_regular: totems_d_regular,
                    totems_d_malo: totems_d_malo,
                    areas_naturales: areas_naturales,
                    pic_a_n_madera_N: pic_a_n_madera_N,
                    pic_a_n_aluminio_N: pic_a_n_aluminio_N,
                    pic_a_n_otro_N: pic_a_n_otro_N,
                    especifique_pic_a_n_N: especifique_pic_a_n_N,
                    pic_a_n_bueno_N: pic_a_n_bueno_N,
                    pic_a_n_regular_N: pic_a_n_regular_N,
                    pic_a_n_malo_N: pic_a_n_malo_N,
                    pic_a_c_bueno_N: pic_a_c_bueno_N,
                    pic_a_c_regular_N: pic_a_c_regular_N,
                    pic_a_c_malo_N: pic_a_c_malo_N,
                    pic_a_t_bueno_N: pic_a_t_bueno_N,
                    pic_a_t_regular_N: pic_a_t_regular_N,
                    pic_a_t_malo_N: pic_a_t_malo_N,
                    pic_a_t_madera_N: pic_a_t_madera_N,
                    pic_a_t_aluminio_N: pic_a_t_aluminio_N,
                    pic_a_t_otro_N: pic_a_t_otro_N,
                    especifique_pic_a_t_N: especifique_pic_a_t_N,
                    pic_s_a_bueno_N: pic_s_a_bueno_N,
                    pic_s_a_regular_N: pic_s_a_regular_N,
                    pic_s_a_malo_N: pic_s_a_malo_N,
                    pic_r_madera_N: pic_r_madera_N,
                    pic_r_alumunio_N: pic_r_alumunio_N,
                    pic_r_otro_N: pic_r_otro_N,
                    especifique_pic_r_N: especifique_pic_r_N,
                    pic_r_bueno_N: pic_r_bueno_N,
                    pic_r_regular_N: pic_r_regular_N,
                    pic_r_malo_N: pic_r_malo_N,
                    seniales_t_a_madera: seniales_t_a_madera,
                    seniales_t_a_aluminio: seniales_t_a_aluminio,
                    seniales_t_a_otro: seniales_t_a_otro,
                    especifique_seniales_t_a: especifique_seniales_t_a,
                    seniales_t_a_bueno: seniales_t_a_bueno,
                    seniales_t_a_regular: seniales_t_a_regular,
                    seniales_t_a_malo: seniales_t_a_malo,
                    paneles_d_a_madera: paneles_d_a_madera,
                    paneles_d_a_aluminio: paneles_d_a_aluminio,
                    paneles_d_a_otro: paneles_d_a_otro,
                    especifique_paneles_d_a: especifique_paneles_d_a,
                    paneles_d_a_bueno: paneles_d_a_bueno,
                    paneles_d_a_regular: paneles_d_a_regular,
                    paneles_d_a_malo: paneles_d_a_malo,
                    panel_i_a_madera: panel_i_a_madera,
                    panel_i_a_aluminio: panel_i_a_aluminio,
                    panel_i_a_otro: panel_i_a_otro,
                    especifique_panel_i_a: especifique_panel_i_a,
                    panel_i_a_bueno: panel_i_a_bueno,
                    panel_i_a_regular: panel_i_a_regular,
                    panel_i_a_malo: panel_i_a_malo,
                    panel_i_d_madera: panel_i_d_madera,
                    panel_i_d_aluminio: panel_i_d_aluminio,
                    panel_i_d_otro: panel_i_d_otro,
                    especifique_panel_i_d: especifique_panel_i_d,
                    panel_i_d_bueno: panel_i_d_bueno,
                    panel_i_d_regular: panel_i_d_regular,
                    panel_i_d_malo: panel_i_d_malo,
                    mesas_i_madera: mesas_i_madera,
                    mesas_i_aluminio: mesas_i_aluminio,
                    mesas_i_otro: mesas_i_otro,
                    especifique_mesas_i: especifique_mesas_i,
                    mesas_i_bueno: mesas_i_bueno,
                    mesas_i_regular: mesas_i_regular,
                    mesas_i_malo: mesas_i_malo,
                    totems_s_madera_N: totems_s_madera_N,
                    totems_s_aluminio_N: totems_s_aluminio_N,
                    totems_s_otro_N: totems_s_otro_N,
                    especifique_totems_s_N: especifique_totems_s_N,
                    totems_s_bueno_N: totems_s_bueno_N,
                    totems_s_regular_N: totems_s_regular_N,
                    totems_s_malo_N: totems_s_malo_N,
                    totem_d_madera: totem_d_madera,
                    totem_d_aluminio: totem_d_aluminio,
                    totem_d_otro: totem_d_otro,
                    especifique_totem_d: especifique_totem_d,
                    totem_d_bueno: totem_d_bueno,
                    totem_d_regular: totem_d_regular,
                    totem_d_malo: totem_d_malo,
                    letreros_informativos: letreros_informativos,
                    letrero_i_b_madera: letrero_i_b_madera,
                    letrero_i_b_aluminio: letrero_i_b_aluminio,
                    letrero_i_b_otro: letrero_i_b_otro,
                    especifique_letrero_i_b: especifique_letrero_i_b,
                    letrero_i_b_bueno: letrero_i_b_bueno,
                    letrero_i_b_regular: letrero_i_b_regular,
                    letrero_i_b_malo: letrero_i_b_malo,
                    normativos_c_madera: normativos_c_madera,
                    normativos_c_aluminio: normativos_c_aluminio,
                    normativos_c_otro: normativos_c_otro,
                    especifique_normativos_c: especifique_normativos_c,
                    normativos_c_bueno: normativos_c_bueno,
                    normativos_c_regular: normativos_c_regular,
                    normativos_c_malo: normativos_c_malo,
                    otros_senialetica: otros_senialetica,
                    otros_senialetica_texto: otros_senialetica_texto,
                    observaciones_senialetica: observaciones_senialetica,
                    senialetica_interna: senialetica_interna,
                    proteccion_elementos_madera: proteccion_elementos_madera,
                    proteccion_elementos_aluminio: proteccion_elementos_aluminio,
                    proteccion_elementos_otro: proteccion_elementos_otro,
                    especifique_proteccion: especifique_proteccion,
                    proteccion_bueno: proteccion_bueno,
                    proteccion_regular: proteccion_regular,
                    proteccion_malo: proteccion_malo,
                    salud_cercana: salud_cercana,
                    salud_atractivo: salud_atractivo,
                    atractivo_hospital: atractivo_hospital,
                    atractivo_centro: atractivo_centro,
                    atractivo_dispensario: atractivo_dispensario,
                    atractivo_botiquin: atractivo_botiquin,
                    atractivo_otros: atractivo_otros,
                    salud_ciudad: salud_ciudad,
                    ciudad_hospital: ciudad_hospital,
                    ciudad_centro: ciudad_centro,
                    ciudad_dispensario: ciudad_dispensario,
                    ciudad_botiquin: ciudad_botiquin,
                    ciudad_otros: ciudad_otros,
                    salud_observaciones: salud_observaciones,
                    seguridad_privada_detalle: seguridad_privada_detalle,
                    seguridad_policia_nacional_detalle: seguridad_policia_nacional_detalle,
                    seguridad_policia_municipal_detalle: seguridad_policia_municipal_detalle,
                    seguridad_otra_detalle: seguridad_otra_detalle,
                    seguridad_M: seguridad_M,
                    seguridad_privada: seguridad_privada,
                    seguridad_policia_nacional: seguridad_policia_nacional,
                    seguridad_policia_municipal: seguridad_policia_municipal,
                    seguridad_otra: seguridad_otra,
                    seguridad_observaciones: seguridad_observaciones,
                    num_atractivo_centro: num_atractivo_centro,
                    num_atractivo_hospital: num_atractivo_hospital,
                    num_atractivo_dispensario: num_atractivo_dispensario,
                    num_atractivo_botiquin: num_atractivo_botiquin,
                    num_atractivo_otros: num_atractivo_otros,
                    num_ciudad_hospital: num_ciudad_hospital,
                    num_ciudad_centro: num_ciudad_centro,
                    num_ciudad_dispensario: num_ciudad_dispensario,
                    num_ciudad_botiquin: num_ciudad_botiquin,
                    num_ciudad_otros: num_ciudad_otros,
                    servicio_publico: servicio_publico,
                    servicio_atractivo: servicio_atractivo,
                    servicio_ciudad: servicio_ciudad,
                    servicio_atractivo_telefonia: servicio_atractivo_telefonia,
                    servicio_atractivo_internet: servicio_atractivo_internet,
                    servicio_atractivo_t_fija: servicio_atractivo_t_fija,
                    servicio_atractivo_t_movil: servicio_atractivo_t_movil,
                    servicio_atractivo_t_satelital: servicio_atractivo_t_satelital,
                    servicio_atractivo_i_fibra: servicio_atractivo_i_fibra,
                    servicio_atractivo_i_satelite: servicio_atractivo_i_satelite,
                    servicio_atractivo_i_redes: servicio_atractivo_i_redes,
                    servicio_atractivo_i_telefonia: servicio_atractivo_i_telefonia,
                    servicio_ciudad_telefonia: servicio_ciudad_telefonia,
                    servicio_ciudad_internet: servicio_ciudad_internet,
                    servicio_ciudad_t_fija: servicio_ciudad_t_fija,
                    servicio_ciudad_t_movil: servicio_ciudad_t_movil,
                    servicio_ciudad_t_satelital: servicio_ciudad_t_satelital,
                    servicio_atractivo_i_linea: servicio_atractivo_i_linea,
                    servicio_ciudad_i_linea: servicio_ciudad_i_linea,
                    servicio_ciudad_i_fibra: servicio_ciudad_i_fibra,
                    servicio_ciudad_i_satelite: servicio_ciudad_i_satelite,
                    servicio_ciudad_i_redes: servicio_ciudad_i_redes,
                    servicio_ciudad_i_telefonia: servicio_ciudad_i_telefonia,
                    servicio_observaciones: servicio_observaciones,
                    servicio_radio: servicio_radio,
                    servicio_radio_exclusivo: servicio_radio_exclusivo,
                    servicio_radio_interna: servicio_radio_interna,
                    servicio_radio_emergencia: servicio_radio_emergencia,
                    servicio_radio_observaciones: servicio_radio_observaciones,
                    multiamenaza_M: multiamenaza_M,
                    multiamenaza_deslaves: multiamenaza_deslaves,
                    multiamenaza_sismos: multiamenaza_sismos,
                    multiamenaza_erupciones: multiamenaza_erupciones,
                    multiamenaza_incendios: multiamenaza_incendios,
                    multiamenaza_sequia: multiamenaza_sequia,
                    multiamenaza_inundaciones: multiamenaza_inundaciones,
                    multiamenaza_aguajes: multiamenaza_aguajes,
                    multiamenazas_tsunami: multiamenazas_tsunami,
                    multiamenaza_plan_contin: multiamenaza_plan_contin,
                    multiamenaza_institucion_doc: multiamenaza_institucion_doc,
                    multiamenaza_nombre_doc: multiamenaza_nombre_doc,
                    multiamenazas_observaciones: multiamenazas_observaciones,
                    currentDate: currentDate)));
  }

  void obtenerPreferencias() async {
    final preferences = await SharedPreferences.getInstance();
    setState(() {
      this.si_higiene_turistica =
          preferences.getBool("si_higiene_turistica") ?? false;
    });
  }

  void guardarPreferencias() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setBool("si_higiene_turistica", si_higiene_turistica);
    });
  }

  void _sendBDD() {
    FirebaseFirestore.instance.collection("viewTuristas").add({
      'si_estado_conservacion': widget.si_estado_conservacion,
      'observaciones_atractivo_U': widget.observaciones_atractivo_U,
      'atractivo_U': widget.atractivo_U,
      'no_estado_conservacion': widget.no_estado_conservacion,
      's_i_estado_conservacion': widget.s_i_estado_conservacion,
      'conservado_atractivo_U': widget.conservado_atractivo_U,
      'alterado_atractivo_U': widget.alterado_atractivo_U,
      'deterioro_atractivo_U': widget.deterioro_atractivo_U,
      'deteriorado_atractivo_U': widget.deteriorado_atractivo_U,
      'erosion_M_fac': widget.erosion_M_fac,
      'humedad_M_fac': widget.humedad_M_fac,
      'desastres_naturales_M_fac': widget.desastres_naturales_M_fac,
      'flora_fauna_M_fac': widget.flora_fauna_M_fac,
      'clima_M_fac': widget.clima_M_fac,
      'actividades_agricolas_M_fac': widget.actividades_agricolas_M_fac,
      'actividades_forestales_M_fac': widget.actividades_forestales_M_fac,
      'actividades_minera_M_fac': widget.actividades_minera_M_fac,
      'actividades_industriales_M_fac': widget.actividades_industriales_M_fac,
      'neglicencia_M_fac': widget.neglicencia_M_fac,
      'huaqueria_M_fac': widget.huaqueria_M_fac,
      'conflictos_tenencia_M_fac': widget.conflictos_tenencia_M_fac,
      'condiciones_uso_M_fac': widget.condiciones_uso_M_fac,
      'falta_mantenimiento_M_fac': widget.falta_mantenimiento_M_fac,
      'contaminacion_ambiente_M_fac': widget.contaminacion_ambiente_M_fac,
      'generacion_residuos_M_fac': widget.generacion_residuos_M_fac,
      'expansion_urbana_M_fac': widget.expansion_urbana_M_fac,
      'conflicto_poliico_social_M_fac': widget.conflicto_poliico_social_M_fac,
      'desarrollo_industrial_M_fac': widget.desarrollo_industrial_M_fac,
      'vandalismo_M_fac': widget.vandalismo_M_fac,
      'otro_M_fac': widget.otro_M_fac,
      'especifique_M_fac': widget.especifique_M_fac,
      'observaciones_M_fac': widget.observaciones_M_fac,
      'entorno_U': widget.entorno_U,
      'conservado_entorno_U': widget.conservado_entorno_U,
      'alterado_entorno_U': widget.alterado_entorno_U,
      'deterioro_entorno_U': widget.deterioro_entorno_U,
      'deteriorado_entorno_U': widget.deteriorado_entorno_U,
      'observaciones_entorno_U': widget.observaciones_entorno_U,
      'erosion_M_ent': widget.erosion_M_ent,
      'humedad_M_ent': widget.humedad_M_ent,
      'desastres_naturales_M_ent': widget.desastres_naturales_M_ent,
      'flora_fauna_M_ent': widget.flora_fauna_M_ent,
      'clima_M_ent': widget.clima_M_ent,
      'actividades_agricolas_M_ent': widget.actividades_agricolas_M_ent,
      'actividades_forestales_M_ent': widget.actividades_forestales_M_ent,
      'actividades_minera_M_ent': widget.actividades_minera_M_ent,
      'actividades_industriales_M_ent': widget.actividades_industriales_M_ent,
      'neglicencia_M_ent': widget.neglicencia_M_ent,
      'huaqueria_M_ent': widget.huaqueria_M_ent,
      'conflictos_tenencia_M_ent': widget.conflictos_tenencia_M_ent,
      'condiciones_uso_M_ent': widget.condiciones_uso_M_ent,
      'falta_mantenimiento_M_ent': widget.falta_mantenimiento_M_ent,
      'contaminacion_ambiente_M_ent': widget.contaminacion_ambiente_M_ent,
      'generacion_residuos_M_ent': widget.generacion_residuos_M_ent,
      'expansion_urbana_M_ent': widget.expansion_urbana_M_ent,
      'conflicto_poliico_social_M_ent': widget.conflicto_poliico_social_M_ent,
      'desarrollo_industrial_M_ent': widget.desarrollo_industrial_M_ent,
      'vandalismo_M_ent': widget.vandalismo_M_ent,
      'otro_M_ent': widget.otro_M_ent,
      'especifique_M_ent': widget.especifique_M_ent,
      'observaciones_M_ent': widget.observaciones_M_ent,
      'declaratoria_espacio': widget.declaratoria_espacio,
      'declarante_espacio': widget.declarante_espacio,
      'denominacion_espacio': widget.denominacion_espacio,
      'fecha_declaracion_espaci': widget.fecha_declaracion_espacio,
      'alcance_espacio': widget.alcance_espacio,
      'observaciones_espacio': widget.observaciones_espacio
    });
  }

}



 

