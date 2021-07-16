
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:turismo_flutter/pages/viewturista_table10.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table8.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class turismTable9 extends StatefulWidget {
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
  final bool politicas_si;
  final bool politicas_no ;
  final bool politicas_s_i ;
  final bool politicas_gad_si ;
  final bool politicas_gad_no ;
  final bool politicas_planificacion_si ;
  final bool politicas_planificacion_no ;
  final String politicas_planificacion_espec;
  final bool politicas_normativas_si ;
  final bool politicas_normativas_no ;
  final String politicas_normativas_espec ;
  final bool politicas_ordenanzas_si ;
  final bool politicas_ordenanzas_no ;
  final String politicas_ordenanzas_espec ;
  final String politicas_observaciones ;

  turismTable9(
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
        required this.currentDate,
        required this.politicas_si,
        required this.politicas_no,
        required this.politicas_s_i,
        required this.politicas_gad_si,
        required this.politicas_gad_no,
        required this.politicas_planificacion_si,
        required this.politicas_planificacion_no,
        required this.politicas_planificacion_espec,
        required this.politicas_normativas_si,
        required this.politicas_normativas_no,
        required this.politicas_normativas_espec,
        required this.politicas_ordenanzas_si,
        required this.politicas_ordenanzas_no,
        required this.politicas_ordenanzas_espec,
        required this.politicas_observaciones

      })
      : super(key: key);
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
  int optionGroup = 0;
  late int selectedOption;

  void initState() {
    super.initState();
    optionGroup = 0;
    selectedOption = 0;
  }

  setSelectedRadio (int val) {
    setState(() {
      optionGroup = val;
      if (optionGroup == 1) {
        this.actividades_si = true;
        this.actividades_no = false;
        this.actividades_s_i = false;
        if (this.actividades_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup == 2) {
        this.actividades_si = false;
        this.actividades_no = true;
        this.actividades_s_i = false;
        if (this.actividades_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup == 3) {
        this.actividades_si = false;
        this.actividades_no = false;
        this.actividades_s_i = true;
      }
    });
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
        resizeToAvoidBottomInset: false,
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
                      MaterialPageRoute(builder: (context) => TurismTable10()));
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
                      child:RadioListTile(
                        value: 1,
                        groupValue: optionGroup,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
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
                      child:RadioListTile(
                        value: 2,
                        groupValue: optionGroup,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
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
                      child:RadioListTile(
                        value: 3,
                        groupValue: optionGroup,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new RaisedButton(
              onPressed: () {
                print ("calor tabla 8: "+widget.politicas_si.toString());
                print ("calor tabla 7: "+widget.si_higiene_turistica.toString());
              },
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

  void _sendData (BuildContext context) {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TurismTable10())
    );
  }
}


