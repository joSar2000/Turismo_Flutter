import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:turismo_flutter/pages/viewturista_table9.dart';

class TableTurism8 extends StatefulWidget {
  static const String ROUTE = "tabla8";

  //Tabla6
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
  final bool humedad_M_ent;
  final bool desastres_naturales_M_ent;
  final bool flora_fauna_M_ent;
  final bool clima_M_ent;
  final bool actividades_agricolas_M_ent;
  final bool actividades_forestales_M_ent;
  final bool actividades_minera_M_ent;
  final bool actividades_industriales_M_ent;
  final bool neglicencia_M_ent;
  final bool huaqueria_M_ent;
  final bool conflictos_tenencia_M_ent;
  final bool condiciones_uso_M_ent;
  final bool falta_mantenimiento_M_ent;
  final bool contaminacion_ambiente_M_ent;
  final bool generacion_residuos_M_ent;
  final bool expansion_urbana_M_ent;
  final bool conflicto_poliico_social_M_ent;
  final bool desarrollo_industrial_M_ent;
  final bool vandalismo_M_ent;
  final bool otro_M_ent;
  final String especifique_M_ent;
  final String observaciones_M_ent;
  final bool declaratoria_espacio;
  final String declarante_espacio;
  final String denominacion_espacio;
  final DateTime fecha_declaracion_espacio;
  final String alcance_espacio;
  final String observaciones_espacio;
  //Tabla7
  final bool si_higiene_turistica;
  final bool no_higiene_turistica;
  final bool s_i_higiene_turistica;
  final bool servicio_basico;
  final bool atractivo_servicio_basico;
  final bool agua_servicio;
  final String especifique_agua_atractivo;
  final bool agua_atractivo;
  final bool energia_atractivo;
  final bool energia_ciudad;
  final String especifique_energia_atractivo;
  final bool saneamiento_atractivo;
  final String especifique_saneamiento_atractivo;
  final bool desechos_atractivo;
  final String especifique_desechos_atractivo;
  final String onservaciones_atractivo_ciudad;
  final bool ciudad_poblado_servicio_basico;
  final bool agua_ciudad;
  final String especifique_agua_ciudad;
  final String especifique_energia_ciudad;
  final bool saneamiento_ciudad;
  final String especifique_saneamiento_ciudad;
  final bool desechos_ciudad;
  final String especifique_desechos_ciudad;
  final bool senialeticas_atarctivo;
  final bool areas_urbanas;
  final String pic_a_n_madera;
  final String pic_a_n_aluminio;
  final String pic_a_n_otro;
  final String especifique_pic_a_n;
  final bool pic_a_n_bueno;
  final bool pic_a_n_regular;
  final bool pic_a_n_malo;
  final String pic_a_c_madera;
  final String pic_a_c_aluminio;
  final String pic_a_c_otro;
  final String especifique_pic_a_c;
  final bool pic_a_c_bueno;
  final bool pic_a_c_regular;
  final bool pic_a_c_malo;
  final String pic_a_t_madera;
  final String pic_a_t_aluminio;
  final String pic_a_t_otro;
  final String especifique_pic_a_t;
  final bool pic_a_t_bueno;
  final bool pic_a_t_regular;
  final bool pic_a_t_malo;
  final String pic_s_a_madera;
  final String pic_s_a_aluminio;
  final String pic_s_a_otro;
  final String especifique_pic_s_a;
  final bool pic_s_a_bueno;
  final bool pic_s_a_regular;
  final bool pic_s_a_malo;
  final String pic_r_madera;
  final String pic_r_aluminio;
  final String pic_r_otro;
  final String especifique_pic_r;
  final bool pic_r_bueno;
  final bool pic_r_regular;
  final bool pic_r_malo;
  final String totems_a_t_madera;
  final String totems_a_t_aluminio;
  final String totems_a_t_otro;
  final String especifique_totems_a_t;
  final bool totems_a_t_bueno;
  final bool totems_a_t_regular;
  final bool totems_a_t_malo;
  final String totems_s_madera;
  final String totems_s_aluminio;
  final String totems_s_otro;
  final String especifique_totems_s;
  final bool totems_s_bueno;
  final bool totems_s_regular;
  final bool totems_s_malo;
  final String totems_d_madera;
  final String totems_d_aluminio;
  final String totems_d_otro;
  final String especifique_totems_d;
  final bool totems_d_bueno;
  final bool totems_d_regular;
  final bool totems_d_malo;
  final bool areas_naturales;
  final String pic_a_n_madera_N;
  final String pic_a_n_aluminio_N;
  final String pic_a_n_otro_N;
  final String especifique_pic_a_n_N;
  final bool pic_a_n_bueno_N;
  final bool pic_a_n_regular_N;
  final bool pic_a_n_malo_N;
  final bool pic_a_c_bueno_N;
  final bool pic_a_c_regular_N;
  final bool pic_a_c_malo_N;
  final bool pic_a_t_bueno_N;
  final bool pic_a_t_regular_N;
  final bool pic_a_t_malo_N;
  final String pic_a_t_madera_N;
  final String pic_a_t_aluminio_N;
  final String pic_a_t_otro_N;
  final String especifique_pic_a_t_N;
  final bool pic_s_a_bueno_N;
  final bool pic_s_a_regular_N;
  final bool pic_s_a_malo_N;
  final String pic_r_madera_N;
  final String pic_r_alumunio_N;
  final String pic_r_otro_N;
  final String especifique_pic_r_N;
  final bool pic_r_bueno_N;
  final bool pic_r_regular_N;
  final bool pic_r_malo_N;
  final String seniales_t_a_madera;
  final String seniales_t_a_aluminio;
  final String seniales_t_a_otro;
  final String especifique_seniales_t_a;
  final bool seniales_t_a_bueno;
  final bool seniales_t_a_regular;
  final bool seniales_t_a_malo;
  final String paneles_d_a_madera;
  final String paneles_d_a_aluminio;
  final String paneles_d_a_otro;
  final String especifique_paneles_d_a;
  final bool paneles_d_a_bueno;
  final bool paneles_d_a_regular;
  final bool paneles_d_a_malo;
  final String panel_i_a_madera;
  final String panel_i_a_aluminio;
  final String panel_i_a_otro;
  final String especifique_panel_i_a;
  final bool panel_i_a_bueno;
  final bool panel_i_a_regular;
  final bool panel_i_a_malo;
  final String panel_i_d_madera;
  final String panel_i_d_aluminio;
  final String panel_i_d_otro;
  final String especifique_panel_i_d;
  final bool panel_i_d_bueno;
  final bool panel_i_d_regular;
  final bool panel_i_d_malo;
  final String mesas_i_madera;
  final String mesas_i_aluminio;
  final String mesas_i_otro;
  final String especifique_mesas_i;
  final bool mesas_i_bueno;
  final bool mesas_i_regular;
  final bool mesas_i_malo;
  final String totems_s_madera_N;
  final String totems_s_aluminio_N;
  final String totems_s_otro_N;
  final String especifique_totems_s_N;
  final bool totems_s_bueno_N;
  final bool totems_s_regular_N;
  final bool totems_s_malo_N;
  final String totem_d_madera;
  final String totem_d_aluminio;
  final String totem_d_otro;
  final String especifique_totem_d;
  final bool totem_d_bueno;
  final bool totem_d_regular;
  final bool totem_d_malo;
  final bool letreros_informativos;
  final String letrero_i_b_madera;
  final String letrero_i_b_aluminio;
  final String letrero_i_b_otro;
  final String especifique_letrero_i_b;
  final bool letrero_i_b_bueno;
  final bool letrero_i_b_regular;
  final bool letrero_i_b_malo;
  final String normativos_c_madera;
  final String normativos_c_aluminio;
  final String normativos_c_otro;
  final String especifique_normativos_c;
  final bool normativos_c_bueno;
  final bool normativos_c_regular;
  final bool normativos_c_malo;
  final bool otros_senialetica;
  final String otros_senialetica_texto;
  final String observaciones_senialetica;
  final bool senialetica_interna;
  final String proteccion_elementos_madera;
  final String proteccion_elementos_aluminio;
  final String proteccion_elementos_otro;
  final String especifique_proteccion;
  final bool proteccion_bueno;
  final bool proteccion_regular;
  final bool proteccion_malo;
  final bool salud_cercana;
  final bool salud_atractivo;
  final bool atractivo_hospital;
  final bool atractivo_centro;
  final bool atractivo_dispensario;
  final bool atractivo_botiquin;
  final bool atractivo_otros;
  final bool salud_ciudad;
  final bool ciudad_hospital;
  final bool ciudad_centro;
  final bool ciudad_dispensario;
  final bool ciudad_botiquin;
  final bool ciudad_otros;
  final String salud_observaciones;
  final String seguridad_privada_detalle;
  final String seguridad_policia_nacional_detalle;
  final String seguridad_policia_municipal_detalle;
  final String seguridad_otra_detalle;
  final bool seguridad_M;
  final bool seguridad_privada;
  final bool seguridad_policia_nacional;
  final bool seguridad_policia_municipal;
  final bool seguridad_otra;
  final String seguridad_observaciones;
  final String num_atractivo_centro;
  final String num_atractivo_hospital;
  final String num_atractivo_dispensario;
  final String num_atractivo_botiquin;
  final String num_atractivo_otros;
  final String num_ciudad_hospital;
  final String num_ciudad_centro;
  final String num_ciudad_dispensario;
  final String num_ciudad_botiquin;
  final String num_ciudad_otros;
  final bool servicio_publico;
  final bool servicio_atractivo;
  final bool servicio_ciudad;
  final bool servicio_atractivo_telefonia;
  final bool servicio_atractivo_internet;
  final bool servicio_atractivo_t_fija;
  final bool servicio_atractivo_t_movil;
  final bool servicio_atractivo_t_satelital;
  final bool servicio_atractivo_i_fibra;
  final bool servicio_atractivo_i_satelite;
  final bool servicio_atractivo_i_redes;
  final bool servicio_atractivo_i_telefonia;
  final bool servicio_ciudad_telefonia;
  final bool servicio_ciudad_internet;
  final bool servicio_ciudad_t_fija;
  final bool servicio_ciudad_t_movil;
  final bool servicio_ciudad_t_satelital;
  final bool servicio_atractivo_i_linea;
  final bool servicio_ciudad_i_linea;
  final bool servicio_ciudad_i_fibra;
  final bool servicio_ciudad_i_satelite;
  final bool servicio_ciudad_i_redes;
  final bool servicio_ciudad_i_telefonia;
  final String servicio_observaciones;
  final bool servicio_radio;
  final bool servicio_radio_exclusivo;
  final bool servicio_radio_interna;
  final bool servicio_radio_emergencia;
  final String servicio_radio_observaciones;
  final bool multiamenaza_M;
  final bool multiamenaza_deslaves;
  final bool multiamenaza_sismos;
  final bool multiamenaza_erupciones;
  final bool multiamenaza_incendios;
  final bool multiamenaza_sequia;
  final bool multiamenaza_inundaciones;
  final bool multiamenaza_aguajes;
  final bool multiamenazas_tsunami;
  final bool multiamenaza_plan_contin;
  final String multiamenaza_institucion_doc;
  final String multiamenaza_nombre_doc;
  final String multiamenazas_observaciones;
  final DateTime currentDate;

  //Tabla7

  TableTurism8(
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
      required this.observaciones_espacio,
      //Variables tabla7
      required this.si_higiene_turistica,
      required this.no_higiene_turistica,
      required this.s_i_higiene_turistica,
      required this.servicio_basico,
      required this.atractivo_servicio_basico,
      required this.agua_servicio,
      required this.especifique_agua_atractivo,
      required this.agua_atractivo,
      required this.energia_atractivo,
      required this.energia_ciudad,
      required this.especifique_energia_atractivo,
      required this.saneamiento_atractivo,
      required this.especifique_saneamiento_atractivo,
      required this.desechos_atractivo,
      required this.especifique_desechos_atractivo,
      required this.onservaciones_atractivo_ciudad,
      required this.ciudad_poblado_servicio_basico,
      required this.agua_ciudad,
      required this.especifique_agua_ciudad,
      required this.especifique_energia_ciudad,
      required this.saneamiento_ciudad,
      required this.especifique_saneamiento_ciudad,
      required this.desechos_ciudad,
      required this.especifique_desechos_ciudad,
      required this.senialeticas_atarctivo,
      required this.areas_urbanas,
      required this.pic_a_n_madera,
      required this.pic_a_n_aluminio,
      required this.pic_a_n_otro,
      required this.especifique_pic_a_n,
      required this.pic_a_n_bueno,
      required this.pic_a_n_regular,
      required this.pic_a_n_malo,
      required this.pic_a_c_madera,
      required this.pic_a_c_aluminio,
      required this.pic_a_c_otro,
      required this.especifique_pic_a_c,
      required this.pic_a_c_bueno,
      required this.pic_a_c_regular,
      required this.pic_a_c_malo,
      required this.pic_a_t_madera,
      required this.pic_a_t_aluminio,
      required this.pic_a_t_otro,
      required this.especifique_pic_a_t,
      required this.pic_a_t_bueno,
      required this.pic_a_t_regular,
      required this.pic_a_t_malo,
      required this.pic_s_a_madera,
      required this.pic_s_a_aluminio,
      required this.pic_s_a_otro,
      required this.especifique_pic_s_a,
      required this.pic_s_a_bueno,
      required this.pic_s_a_regular,
      required this.pic_s_a_malo,
      required this.pic_r_madera,
      required this.pic_r_aluminio,
      required this.pic_r_otro,
      required this.especifique_pic_r,
      required this.pic_r_bueno,
      required this.pic_r_regular,
      required this.pic_r_malo,
      required this.totems_a_t_madera,
      required this.totems_a_t_aluminio,
      required this.totems_a_t_otro,
      required this.especifique_totems_a_t,
      required this.totems_a_t_bueno,
      required this.totems_a_t_regular,
      required this.totems_a_t_malo,
      required this.totems_s_madera,
      required this.totems_s_aluminio,
      required this.totems_s_otro,
      required this.especifique_totems_s,
      required this.totems_s_bueno,
      required this.totems_s_regular,
      required this.totems_s_malo,
      required this.totems_d_madera,
      required this.totems_d_aluminio,
      required this.totems_d_otro,
      required this.especifique_totems_d,
      required this.totems_d_bueno,
      required this.totems_d_regular,
      required this.totems_d_malo,
      required this.areas_naturales,
      required this.pic_a_n_madera_N,
      required this.pic_a_n_aluminio_N,
      required this.pic_a_n_otro_N,
      required this.especifique_pic_a_n_N,
      required this.pic_a_n_bueno_N,
      required this.pic_a_n_regular_N,
      required this.pic_a_n_malo_N,
      required this.pic_a_c_bueno_N,
      required this.pic_a_c_regular_N,
      required this.pic_a_c_malo_N,
      required this.pic_a_t_bueno_N,
      required this.pic_a_t_regular_N,
      required this.pic_a_t_malo_N,
      required this.pic_a_t_madera_N,
      required this.pic_a_t_aluminio_N,
      required this.pic_a_t_otro_N,
      required this.especifique_pic_a_t_N,
      required this.pic_s_a_bueno_N,
      required this.pic_s_a_regular_N,
      required this.pic_s_a_malo_N,
      required this.pic_r_madera_N,
      required this.pic_r_alumunio_N,
      required this.pic_r_otro_N,
      required this.especifique_pic_r_N,
      required this.pic_r_bueno_N,
      required this.pic_r_regular_N,
      required this.pic_r_malo_N,
      required this.seniales_t_a_madera,
      required this.seniales_t_a_aluminio,
      required this.seniales_t_a_otro,
      required this.especifique_seniales_t_a,
      required this.seniales_t_a_bueno,
      required this.seniales_t_a_regular,
      required this.seniales_t_a_malo,
      required this.paneles_d_a_madera,
      required this.paneles_d_a_aluminio,
      required this.paneles_d_a_otro,
      required this.especifique_paneles_d_a,
      required this.paneles_d_a_bueno,
      required this.paneles_d_a_regular,
      required this.paneles_d_a_malo,
      required this.panel_i_a_madera,
      required this.panel_i_a_aluminio,
      required this.panel_i_a_otro,
      required this.especifique_panel_i_a,
      required this.panel_i_a_bueno,
      required this.panel_i_a_regular,
      required this.panel_i_a_malo,
      required this.panel_i_d_madera,
      required this.panel_i_d_aluminio,
      required this.panel_i_d_otro,
      required this.especifique_panel_i_d,
      required this.panel_i_d_bueno,
      required this.panel_i_d_regular,
      required this.panel_i_d_malo,
      required this.mesas_i_madera,
      required this.mesas_i_aluminio,
      required this.mesas_i_otro,
      required this.especifique_mesas_i,
      required this.mesas_i_bueno,
      required this.mesas_i_regular,
      required this.mesas_i_malo,
      required this.totems_s_madera_N,
      required this.totems_s_aluminio_N,
      required this.totems_s_otro_N,
      required this.especifique_totems_s_N,
      required this.totems_s_bueno_N,
      required this.totems_s_regular_N,
      required this.totems_s_malo_N,
      required this.totem_d_madera,
      required this.totem_d_aluminio,
      required this.totem_d_otro,
      required this.especifique_totem_d,
      required this.totem_d_bueno,
      required this.totem_d_regular,
      required this.totem_d_malo,
      required this.letreros_informativos,
      required this.letrero_i_b_madera,
      required this.letrero_i_b_aluminio,
      required this.letrero_i_b_otro,
      required this.especifique_letrero_i_b,
      required this.letrero_i_b_bueno,
      required this.letrero_i_b_regular,
      required this.letrero_i_b_malo,
      required this.normativos_c_madera,
      required this.normativos_c_aluminio,
      required this.normativos_c_otro,
      required this.especifique_normativos_c,
      required this.normativos_c_bueno,
      required this.normativos_c_regular,
      required this.normativos_c_malo,
      required this.otros_senialetica,
      required this.otros_senialetica_texto,
      required this.observaciones_senialetica,
      required this.senialetica_interna,
      required this.proteccion_elementos_madera,
      required this.proteccion_elementos_aluminio,
      required this.proteccion_elementos_otro,
      required this.especifique_proteccion,
      required this.proteccion_bueno,
      required this.proteccion_regular,
      required this.proteccion_malo,
      required this.salud_cercana,
      required this.salud_atractivo,
      required this.atractivo_hospital,
      required this.atractivo_centro,
      required this.atractivo_dispensario,
      required this.atractivo_botiquin,
      required this.atractivo_otros,
      required this.salud_ciudad,
      required this.ciudad_hospital,
      required this.ciudad_centro,
      required this.ciudad_dispensario,
      required this.ciudad_botiquin,
      required this.ciudad_otros,
      required this.salud_observaciones,
      required this.seguridad_privada_detalle,
      required this.seguridad_policia_nacional_detalle,
      required this.seguridad_policia_municipal_detalle,
      required this.seguridad_otra_detalle,
      required this.seguridad_M,
      required this.seguridad_privada,
      required this.seguridad_policia_nacional,
      required this.seguridad_policia_municipal,
      required this.seguridad_otra,
      required this.seguridad_observaciones,
      required this.num_atractivo_centro,
      required this.num_atractivo_hospital,
      required this.num_atractivo_dispensario,
      required this.num_atractivo_botiquin,
      required this.num_atractivo_otros,
      required this.num_ciudad_hospital,
      required this.num_ciudad_centro,
      required this.num_ciudad_dispensario,
      required this.num_ciudad_botiquin,
      required this.num_ciudad_otros,
      required this.servicio_publico,
      required this.servicio_atractivo,
      required this.servicio_ciudad,
      required this.servicio_atractivo_telefonia,
      required this.servicio_atractivo_internet,
      required this.servicio_atractivo_t_fija,
      required this.servicio_atractivo_t_movil,
      required this.servicio_atractivo_t_satelital,
      required this.servicio_atractivo_i_fibra,
      required this.servicio_atractivo_i_satelite,
      required this.servicio_atractivo_i_redes,
      required this.servicio_atractivo_i_telefonia,
      required this.servicio_ciudad_telefonia,
      required this.servicio_ciudad_internet,
      required this.servicio_ciudad_t_fija,
      required this.servicio_ciudad_t_movil,
      required this.servicio_ciudad_t_satelital,
      required this.servicio_atractivo_i_linea,
      required this.servicio_ciudad_i_linea,
      required this.servicio_ciudad_i_fibra,
      required this.servicio_ciudad_i_satelite,
      required this.servicio_ciudad_i_redes,
      required this.servicio_ciudad_i_telefonia,
      required this.servicio_observaciones,
      required this.servicio_radio,
      required this.servicio_radio_exclusivo,
      required this.servicio_radio_interna,
      required this.servicio_radio_emergencia,
      required this.servicio_radio_observaciones,
      required this.multiamenaza_M,
      required this.multiamenaza_deslaves,
      required this.multiamenaza_sismos,
      required this.multiamenaza_erupciones,
      required this.multiamenaza_incendios,
      required this.multiamenaza_sequia,
      required this.multiamenaza_inundaciones,
      required this.multiamenaza_aguajes,
      required this.multiamenazas_tsunami,
      required this.multiamenaza_plan_contin,
      required this.multiamenaza_institucion_doc,
      required this.multiamenaza_nombre_doc,
      required this.multiamenazas_observaciones,
      required this.currentDate})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State<TableTurism8> {
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

  //VARIABLES
  static TextEditingController obs_politicas_planificacion_espec =
      TextEditingController();
  static TextEditingController obs_politicas_normativas_espec =
      TextEditingController();
  static TextEditingController obs_politicas_ordenanzas_espec =
      TextEditingController();
  static TextEditingController obs_politicas_observaciones =
      TextEditingController();

  bool politicas_si = false;
  bool politicas_no = false;
  bool politicas_s_i = false;
  bool politicas_gad_si = false;
  bool politicas_gad_no = false;
  bool politicas_planificacion_si = false;
  bool politicas_planificacion_no = false;
  String politicas_planificacion_espec = obs_politicas_planificacion_espec.text;
  bool politicas_normativas_si = false;
  bool politicas_normativas_no = false;
  String politicas_normativas_espec = obs_politicas_normativas_espec.text;
  bool politicas_ordenanzas_si = false;
  bool politicas_ordenanzas_no = false;
  String politicas_ordenanzas_espec = obs_politicas_ordenanzas_espec.text;
  String politicas_observaciones = obs_politicas_observaciones.text;
  int optionGroupFirst = 0;
  int optionGroupSecond = 0;
  int optionGroupThird = 0;
  int optionGroupFourth = 0;
  int optionGroupFive = 0;
  late int selectedOption;

  void initState() {
    super.initState();
    optionGroupFirst = 0;
    optionGroupSecond = 0;
    optionGroupThird = 0;
    optionGroupFourth = 0;
    selectedOption = 0;
    optionGroupFive = 0;
  }

  setSelectedRadioFirst(int val) {
    setState(() {
      optionGroupFirst = val;
      if (optionGroupFirst == 1) {
        this.politicas_si = true;
        this.politicas_no = false;
        this.politicas_s_i = false;
        if (this.politicas_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroupFirst == 2) {
        this.politicas_si = false;
        this.politicas_no = true;
        this.politicas_s_i = false;
        if (this.politicas_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroupFirst == 3) {
        this.politicas_si = false;
        this.politicas_no = false;
        this.politicas_s_i = true;
      }
    });
  }

  setSelectedRadioSecond(int val) {
    setState(() {
      optionGroupSecond = val;
      if (optionGroupSecond == 1) {
        this.politicas_gad_si = true;
        this.politicas_gad_no = false;
      } else if (optionGroupSecond == 2) {
        this.politicas_gad_si = false;
        this.politicas_gad_no = true;
      }
    });
  }

  setSelectedRadioThird(int val) {
    setState(() {
      optionGroupThird = val;
      if (optionGroupThird == 1) {
        this.politicas_planificacion_si = true;
        this.politicas_planificacion_no = false;
      } else if (optionGroupThird == 2) {
        this.politicas_planificacion_si = false;
        this.politicas_planificacion_no = true;
      }
    });
  }

  setSelectedRadioFourth(int val) {
    setState(() {
      optionGroupFourth = val;
      if (optionGroupFourth == 1) {
        this.politicas_normativas_si = true;
        this.politicas_normativas_no = false;
      } else if (optionGroupFourth == 2) {
        this.politicas_normativas_si = false;
        this.politicas_normativas_no = true;
      }
    });
  }

  setSelectedRadioFive(int val) {
    setState(() {
      optionGroupFive = val;
      if (optionGroupFive == 1) {
        this.politicas_ordenanzas_si = true;
        this.politicas_ordenanzas_no = false;
      } else if (optionGroupFive == 2) {
        this.politicas_ordenanzas_si = false;
        this.politicas_ordenanzas_no = true;
      }
    });
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

  void _showAlertDialogTable(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
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
        builder: (BuildContext context) => AlertDialog(
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
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('8. POLÍTICAS Y REGULACIONES',
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
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 1,
                    groupValue: optionGroupFirst,
                    title: Text("SI"),
                    onChanged: (val) {
                      setSelectedRadioFirst(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 2,
                    groupValue: optionGroupFirst,
                    title: Text("NO"),
                    onChanged: (val) {
                      setSelectedRadioFirst(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 3,
                    groupValue: optionGroupFirst,
                    title: Text("S/I"),
                    onChanged: (val) {
                      setSelectedRadioFirst(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text(
                      "a. ¿El GAD cuenta con el Plan de Desarrollo Turístico Territorial?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 1,
                    groupValue: optionGroupSecond,
                    title: Text("SI"),
                    onChanged: (val) {
                      setSelectedRadioSecond(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 2,
                    groupValue: optionGroupSecond,
                    title: Text("NO"),
                    onChanged: (val) {
                      setSelectedRadioSecond(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Año de elaboración del documento",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
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
                            maxLines: 3,
                            enabled: false,
                            decoration: InputDecoration(
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
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: FloatingActionButton(
                elevation: 20.0,
                child: Icon(Icons.calendar_today),
                onPressed: () => _selectDate(context),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text(
                      "b. ¿El atractivo se encuentra dentro de la planificación turística territorial (GAD'S)?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 1,
                    groupValue: optionGroupThird,
                    title: Text("SI"),
                    onChanged: (val) {
                      setSelectedRadioThird(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 2,
                    groupValue: optionGroupThird,
                    title: Text("NO"),
                    onChanged: (val) {
                      setSelectedRadioThird(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Especifíque",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
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
                            height: 10,
                          ),
                          TextFormField(
                            enabled:
                                this.politicas_planificacion_si && politicas_si,
                            controller: obs_politicas_planificacion_espec,
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: HexColor("#0D0D0D"),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20.0),
                              hintText:
                                  "Ingrese sus especificaciones en caso de ser necesarias",
                              labelText: ("Especificaciones"),
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
                    child: Text(
                      "c. ¿Existen normativas que se apliquen para el desarrollo de la actividad turística en el atractivo?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 1,
                    groupValue: optionGroupFourth,
                    title: Text("SI"),
                    onChanged: (val) {
                      setSelectedRadioFourth(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 2,
                    groupValue: optionGroupFourth,
                    title: Text("NO"),
                    onChanged: (val) {
                      setSelectedRadioFourth(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Especifíque",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
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
                            height: 10,
                          ),
                          TextFormField(
                            enabled:
                                this.politicas_normativas_si && politicas_si,
                            controller: obs_politicas_normativas_espec,
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: HexColor("#0D0D0D"),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20.0),
                              hintText:
                                  "Ingrese sus especificaciones en caso de ser necesarias",
                              labelText: ("Especificaciones"),
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
                    child: Text(
                      "d. ¿Existen ordenanzas que se apliquen para el desarrollo de la actividad turística en el atractivo?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 1,
                    groupValue: optionGroupFive,
                    title: Text("SI"),
                    onChanged: (val) {
                      setSelectedRadioFive(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                    value: 2,
                    groupValue: optionGroupFive,
                    title: Text("NO"),
                    onChanged: (val) {
                      setSelectedRadioFive(val as int);
                    },
                    activeColor: Colors.indigo,
                    selected: false,
                  )),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Especifíque",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
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
                            height: 10,
                          ),
                          TextFormField(
                            enabled:
                                this.politicas_ordenanzas_si && politicas_si,
                            controller: obs_politicas_ordenanzas_espec,
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: HexColor("#0D0D0D"),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20.0),
                              hintText:
                                  "Ingrese sus especificaciones en caso de ser necesarias",
                              labelText: ("Especificaciones"),
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
              child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      enabled: this.politicas_si,
                      controller: obs_politicas_observaciones,
                      maxLines: 3,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: HexColor("#99AD8F"),
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.input_outlined),
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Ingrese sus observaciones",
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
          ],
        ),
      ),
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => turismTable9(
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
                si_higiene_turistica: widget.si_higiene_turistica,
                no_higiene_turistica: widget.no_higiene_turistica,
                s_i_higiene_turistica: widget.s_i_higiene_turistica,
                servicio_basico: widget.servicio_basico,
                atractivo_servicio_basico: widget.atractivo_servicio_basico,
                agua_servicio: widget.agua_servicio,
                especifique_agua_atractivo: widget.especifique_agua_atractivo,
                agua_atractivo: widget.agua_atractivo,
                energia_atractivo: widget.energia_atractivo,
                energia_ciudad: widget.energia_ciudad,
                especifique_energia_atractivo: widget.especifique_energia_atractivo,
                saneamiento_atractivo: widget.saneamiento_atractivo,
                especifique_saneamiento_atractivo: widget.especifique_saneamiento_atractivo,
                desechos_atractivo: widget.desechos_atractivo,
                especifique_desechos_atractivo: widget.especifique_desechos_atractivo,
                onservaciones_atractivo_ciudad: widget.onservaciones_atractivo_ciudad,
                ciudad_poblado_servicio_basico: widget.ciudad_poblado_servicio_basico,
                agua_ciudad: widget.agua_ciudad,
                especifique_agua_ciudad: widget.especifique_agua_ciudad,
                especifique_energia_ciudad: widget.especifique_energia_ciudad,
                saneamiento_ciudad: widget.saneamiento_ciudad,
                especifique_saneamiento_ciudad: widget.especifique_saneamiento_ciudad,
                desechos_ciudad: widget.desechos_ciudad,
                especifique_desechos_ciudad: widget.especifique_desechos_ciudad,
                senialeticas_atarctivo: widget.senialeticas_atarctivo,
                areas_urbanas: widget.areas_urbanas,
                pic_a_n_madera: widget.pic_a_n_madera,
                pic_a_n_aluminio: widget.pic_a_n_aluminio,
                pic_a_n_otro: widget.pic_a_n_otro,
                especifique_pic_a_n: widget.especifique_pic_a_n,
                pic_a_n_bueno: widget.pic_a_n_bueno,
                pic_a_n_regular: widget.pic_a_n_regular,
                pic_a_n_malo: widget.pic_a_n_malo,
                pic_a_c_madera: widget.pic_a_c_madera,
                pic_a_c_aluminio: widget.pic_a_c_aluminio,
                pic_a_c_otro: widget.pic_a_c_otro,
                especifique_pic_a_c: widget.especifique_pic_a_c,
                pic_a_c_bueno: widget.pic_a_c_bueno,
                pic_a_c_regular: widget.pic_a_c_regular,
                pic_a_c_malo: widget.pic_a_c_malo,
                pic_a_t_madera: widget.pic_a_t_madera,
                pic_a_t_aluminio: widget.pic_a_t_aluminio,
                pic_a_t_otro: widget.pic_a_t_otro,
                especifique_pic_a_t: widget.especifique_pic_a_t,
                pic_a_t_bueno: widget.pic_a_t_bueno,
                pic_a_t_regular: widget.pic_a_t_regular,
                pic_a_t_malo: widget.pic_a_t_malo,
                pic_s_a_madera: widget.pic_s_a_madera,
                pic_s_a_aluminio: widget.pic_s_a_aluminio,
                pic_s_a_otro: widget.pic_s_a_otro,
                especifique_pic_s_a: widget.especifique_pic_s_a,
                pic_s_a_bueno: widget.pic_s_a_bueno,
                pic_s_a_regular: widget.pic_s_a_regular,
                pic_s_a_malo: widget.pic_s_a_malo,
                pic_r_madera: widget.pic_r_madera,
                pic_r_aluminio: widget.pic_r_aluminio,
                pic_r_otro: widget.pic_r_otro,
                especifique_pic_r: widget.especifique_pic_r,
                pic_r_bueno: widget.pic_r_bueno,
                pic_r_regular: widget.pic_r_regular,
                pic_r_malo: widget.pic_r_malo,
                totems_a_t_madera: widget.totems_a_t_madera,
                totems_a_t_aluminio: widget.totems_a_t_aluminio,
                totems_a_t_otro: widget.totems_a_t_otro,
                especifique_totems_a_t: widget.especifique_totems_a_t,
                totems_a_t_bueno: widget.totems_a_t_bueno,
                totems_a_t_regular: widget.totems_a_t_regular,
                totems_a_t_malo: widget.totems_a_t_malo,
                totems_s_madera: widget.totems_s_madera,
                totems_s_aluminio: widget.totems_s_aluminio,
                totems_s_otro: widget.totems_s_otro,
                especifique_totems_s: widget.especifique_totems_s,
                totems_s_bueno: widget.totems_s_bueno,
                totems_s_regular: widget.totems_s_regular,
                totems_s_malo: widget.totems_s_malo,
                totems_d_madera: widget.totems_d_madera,
                totems_d_aluminio: widget.totems_d_aluminio,
                totems_d_otro: widget.totems_d_otro,
                especifique_totems_d: widget.especifique_totems_d,
                totems_d_bueno: widget.totems_d_bueno,
                totems_d_regular: widget.totems_d_regular,
                totems_d_malo: widget.totems_d_malo,
                areas_naturales: widget.areas_naturales,
                pic_a_n_madera_N: widget.pic_a_n_madera_N,
                pic_a_n_aluminio_N: widget.pic_a_n_aluminio_N,
                pic_a_n_otro_N: widget.pic_a_n_otro_N,
                especifique_pic_a_n_N: widget.especifique_pic_a_n_N,
                pic_a_n_bueno_N: widget.pic_a_n_bueno_N,
                pic_a_n_regular_N: widget.pic_a_n_regular_N,
                pic_a_n_malo_N: widget.pic_a_n_malo_N,
                pic_a_c_bueno_N: widget.pic_a_c_bueno_N,
                pic_a_c_regular_N: widget.pic_a_c_regular_N,
                pic_a_c_malo_N: widget.pic_a_c_malo_N,
                pic_a_t_bueno_N: widget.pic_a_t_bueno_N,
                pic_a_t_regular_N: widget.pic_a_t_regular_N,
                pic_a_t_malo_N: widget.pic_a_t_malo_N,
                pic_a_t_madera_N: widget.pic_a_t_madera_N,
                pic_a_t_aluminio_N: widget.pic_a_t_aluminio_N,
                pic_a_t_otro_N: widget.pic_a_t_otro_N,
                especifique_pic_a_t_N: widget.especifique_pic_a_t_N,
                pic_s_a_bueno_N: widget.pic_s_a_bueno_N,
                pic_s_a_regular_N: widget.pic_s_a_regular_N,
                pic_s_a_malo_N: widget.pic_s_a_malo_N,
                pic_r_madera_N: widget.pic_r_madera_N,
                pic_r_alumunio_N: widget.pic_r_alumunio_N,
                pic_r_otro_N: widget.pic_r_otro_N,
                especifique_pic_r_N: widget.especifique_pic_r_N,
                pic_r_bueno_N: widget.pic_r_bueno_N,
                pic_r_regular_N: widget.pic_r_regular_N,
                pic_r_malo_N: widget.pic_r_malo_N,
                seniales_t_a_madera: widget.seniales_t_a_madera,
                seniales_t_a_aluminio: widget.seniales_t_a_aluminio,
                seniales_t_a_otro: widget.seniales_t_a_otro,
                especifique_seniales_t_a: widget.especifique_seniales_t_a,
                seniales_t_a_bueno: widget.seniales_t_a_bueno,
                seniales_t_a_regular: widget.seniales_t_a_regular,
                seniales_t_a_malo: widget.seniales_t_a_malo,
                paneles_d_a_madera: widget.paneles_d_a_madera,
                paneles_d_a_aluminio: widget.paneles_d_a_aluminio,
                paneles_d_a_otro: widget.paneles_d_a_otro,
                especifique_paneles_d_a: widget.especifique_paneles_d_a,
                paneles_d_a_bueno: widget.paneles_d_a_bueno,
                paneles_d_a_regular: widget.paneles_d_a_regular,
                paneles_d_a_malo: widget.paneles_d_a_malo,
                panel_i_a_madera: widget.panel_i_a_madera,
                panel_i_a_aluminio: widget.panel_i_a_aluminio,
                panel_i_a_otro: widget.panel_i_a_otro,
                especifique_panel_i_a: widget.especifique_panel_i_a,
                panel_i_a_bueno: widget.panel_i_a_bueno,
                panel_i_a_regular: widget.panel_i_a_regular,
                panel_i_a_malo: widget.panel_i_a_malo,
                panel_i_d_madera: widget.panel_i_d_madera,
                panel_i_d_aluminio: widget.panel_i_d_aluminio,
                panel_i_d_otro: widget.panel_i_d_otro,
                especifique_panel_i_d: widget.especifique_panel_i_d,
                panel_i_d_bueno: widget.panel_i_d_bueno,
                panel_i_d_regular: widget.panel_i_d_regular,
                panel_i_d_malo: widget.panel_i_d_malo,
                mesas_i_madera: widget.mesas_i_madera,
                mesas_i_aluminio: widget.mesas_i_aluminio,
                mesas_i_otro: widget.mesas_i_otro,
                especifique_mesas_i: widget.especifique_mesas_i,
                mesas_i_bueno: widget.mesas_i_bueno,
                mesas_i_regular: widget.mesas_i_regular,
                mesas_i_malo: widget.mesas_i_malo,
                totems_s_madera_N: widget.totems_s_madera_N,
                totems_s_aluminio_N: widget.totems_s_aluminio_N,
                totems_s_otro_N: widget.totems_s_otro_N,
                especifique_totems_s_N: widget.especifique_totems_s_N,
                totems_s_bueno_N: widget.totems_s_bueno_N,
                totems_s_regular_N: widget.totems_s_regular_N,
                totems_s_malo_N: widget.totems_s_malo_N,
                totem_d_madera: widget.totem_d_madera,
                totem_d_aluminio: widget.totem_d_aluminio,
                totem_d_otro: widget.totem_d_otro,
                especifique_totem_d: widget.especifique_totem_d,
                totem_d_bueno: widget.totem_d_bueno,
                totem_d_regular: widget.totem_d_regular,
                totem_d_malo: widget.totem_d_malo,
                letreros_informativos: widget.letreros_informativos,
                letrero_i_b_madera: widget.letrero_i_b_madera,
                letrero_i_b_aluminio: widget.letrero_i_b_aluminio,
                letrero_i_b_otro: widget.letrero_i_b_otro,
                especifique_letrero_i_b: widget.especifique_letrero_i_b,
                letrero_i_b_bueno: widget.letrero_i_b_bueno,
                letrero_i_b_regular: widget.letrero_i_b_regular,
                letrero_i_b_malo: widget.letrero_i_b_malo,
                normativos_c_madera: widget.normativos_c_madera,
                normativos_c_aluminio: widget.normativos_c_aluminio,
                normativos_c_otro: widget.normativos_c_otro,
                especifique_normativos_c: widget.especifique_normativos_c,
                normativos_c_bueno: widget.normativos_c_bueno,
                normativos_c_regular: widget.normativos_c_regular,
                normativos_c_malo: widget.normativos_c_malo,
                otros_senialetica: widget.otros_senialetica,
                otros_senialetica_texto: widget.otros_senialetica_texto,
                observaciones_senialetica: widget.observaciones_senialetica,
                senialetica_interna: widget.senialetica_interna,
                proteccion_elementos_madera: widget.proteccion_elementos_madera,
                proteccion_elementos_aluminio: widget.proteccion_elementos_aluminio,
                proteccion_elementos_otro: widget.proteccion_elementos_otro,
                especifique_proteccion: widget.especifique_proteccion,
                proteccion_bueno: widget.proteccion_bueno,
                proteccion_regular: widget.proteccion_regular,
                proteccion_malo: widget.proteccion_malo,
                salud_cercana: widget.salud_cercana,
                salud_atractivo: widget.salud_atractivo,
                atractivo_hospital: widget.atractivo_hospital,
                atractivo_centro: widget.atractivo_centro,
                atractivo_dispensario: widget.atractivo_dispensario,
                atractivo_botiquin: widget.atractivo_botiquin,
                atractivo_otros: widget.atractivo_otros,
                salud_ciudad: widget.salud_ciudad,
                ciudad_hospital: widget.ciudad_hospital,
                ciudad_centro: widget.ciudad_centro,
                ciudad_dispensario: widget.ciudad_dispensario,
                ciudad_botiquin: widget.ciudad_botiquin,
                ciudad_otros: widget.ciudad_otros,
                salud_observaciones: widget.salud_observaciones,
                seguridad_privada_detalle: widget.seguridad_privada_detalle,
                seguridad_policia_nacional_detalle: widget.seguridad_policia_nacional_detalle,
                seguridad_policia_municipal_detalle: widget.seguridad_policia_municipal_detalle,
                seguridad_otra_detalle: widget.seguridad_otra_detalle,
                seguridad_M: widget.seguridad_M,
                seguridad_privada: widget.seguridad_privada,
                seguridad_policia_nacional: widget.seguridad_policia_nacional,
                seguridad_policia_municipal: widget.seguridad_policia_municipal,
                seguridad_otra: widget.seguridad_otra,
                seguridad_observaciones: widget.seguridad_observaciones,
                num_atractivo_centro: widget.num_atractivo_centro,
                num_atractivo_hospital: widget.num_atractivo_hospital,
                num_atractivo_dispensario: widget.num_atractivo_dispensario,
                num_atractivo_botiquin: widget.num_atractivo_botiquin,
                num_atractivo_otros: widget.num_atractivo_otros,
                num_ciudad_hospital: widget.num_ciudad_hospital,
                num_ciudad_centro: widget.num_ciudad_centro,
                num_ciudad_dispensario: widget.num_ciudad_dispensario,
                num_ciudad_botiquin: widget.num_ciudad_botiquin,
                num_ciudad_otros: widget.num_ciudad_otros,
                servicio_publico: widget.servicio_publico,
                servicio_atractivo: widget.servicio_atractivo,
                servicio_ciudad: widget.servicio_ciudad,
                servicio_atractivo_telefonia: widget.servicio_atractivo_telefonia,
                servicio_atractivo_internet: widget.servicio_atractivo_internet,
                servicio_atractivo_t_fija: widget.servicio_atractivo_t_fija,
                servicio_atractivo_t_movil: widget.servicio_atractivo_t_movil,
                servicio_atractivo_t_satelital: widget.servicio_atractivo_t_satelital,
                servicio_atractivo_i_fibra: widget.servicio_atractivo_i_fibra,
                servicio_atractivo_i_satelite: widget.servicio_atractivo_i_satelite,
                servicio_atractivo_i_redes: widget.servicio_atractivo_i_redes,
                servicio_atractivo_i_telefonia: widget.servicio_atractivo_i_telefonia,
                servicio_ciudad_telefonia: widget.servicio_ciudad_telefonia,
                servicio_ciudad_internet: widget.servicio_ciudad_internet,
                servicio_ciudad_t_fija: widget.servicio_ciudad_t_fija,
                servicio_ciudad_t_movil: widget.servicio_ciudad_t_movil,
                servicio_ciudad_t_satelital: widget.servicio_ciudad_t_satelital,
                servicio_atractivo_i_linea: widget.servicio_atractivo_i_linea,
                servicio_ciudad_i_linea: widget.servicio_ciudad_i_linea,
                servicio_ciudad_i_fibra: widget.servicio_ciudad_i_fibra,
                servicio_ciudad_i_satelite: widget.servicio_ciudad_i_satelite,
                servicio_ciudad_i_redes: widget.servicio_ciudad_i_redes,
                servicio_ciudad_i_telefonia: widget.servicio_ciudad_i_telefonia,
                servicio_observaciones: widget.servicio_observaciones,
                servicio_radio: widget.servicio_radio,
                servicio_radio_exclusivo: widget.servicio_radio_exclusivo,
                servicio_radio_interna: widget.servicio_radio_interna,
                servicio_radio_emergencia: widget.servicio_radio_emergencia,
                servicio_radio_observaciones: widget.servicio_radio_observaciones,
                multiamenaza_M: widget.multiamenaza_M,
                multiamenaza_deslaves: widget.multiamenaza_deslaves,
                multiamenaza_sismos: widget.multiamenaza_sismos,
                multiamenaza_erupciones: widget.multiamenaza_erupciones,
                multiamenaza_incendios: widget.multiamenaza_incendios,
                multiamenaza_sequia: widget.multiamenaza_sequia,
                multiamenaza_inundaciones: widget.multiamenaza_inundaciones,
                multiamenaza_aguajes: widget.multiamenaza_aguajes,
                multiamenazas_tsunami: widget.multiamenazas_tsunami,
                multiamenaza_plan_contin: widget.multiamenaza_plan_contin,
                multiamenaza_institucion_doc: widget.multiamenaza_institucion_doc,
                multiamenaza_nombre_doc: widget.multiamenaza_nombre_doc,
                multiamenazas_observaciones: widget.multiamenazas_observaciones,
                currentDate: currentDate,
                politicas_si: politicas_si,
                politicas_no: politicas_no,
                politicas_s_i: politicas_s_i,
                politicas_gad_si: politicas_gad_si,
                politicas_gad_no: politicas_gad_no,
                politicas_planificacion_si: politicas_planificacion_si,
                politicas_planificacion_no: politicas_planificacion_no,
                politicas_planificacion_espec: politicas_planificacion_espec,
                politicas_normativas_si: politicas_normativas_si,
                politicas_normativas_no: politicas_normativas_no,
                politicas_normativas_espec: politicas_normativas_espec,
                politicas_ordenanzas_si: politicas_ordenanzas_si,
                politicas_ordenanzas_no: politicas_ordenanzas_no,
                politicas_ordenanzas_espec: politicas_ordenanzas_espec,
                politicas_observaciones: politicas_observaciones)));
  }

  void obtenerPreferencias() async {
    setState(() async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      politicas_si = preferences.getBool("politicas_si")!;
    });
  }

  void guardarPreferencias() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("politicas_si", politicas_si);
  }
}
