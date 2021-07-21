import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/viewturista_table14.dart';
import 'package:turismo_flutter/pages/viewturista_table16.dart';

class TurismTable13 extends StatefulWidget {

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
  final String seleccion;
  final String seleccion1;
  final String seleccion2;
  final String seleccion3;
  //Tabla3
  final String temperatura;
  final String precipitacion;
  final String especificar;
  final String precio;
  final String meses_recomen;
  final String observaciones;
  //Tabla4
  final String ciudad_cercana;
  final String distancia_ciudad;
  final String tiempo_auto;
  final String latitudTab4;
  final String longitudTab4;
  final String observaciones_accs;
  final String coor_inicio;
  final String coor_fin;
  final String distancia;
  final String tipo_material;
  final String estado ;
  final String observaciones_terrestre ;
  final String puerto ;
  final String observaciones_acuatico;
  final String observaciones_aereo;
  final String especifique_servicio ;
  final String observaciones_servicio ;
  //Tabla5
  final String estableci_registrados;
  final String numero_mesas;
  final String numero_plazas;
  final String observacionesTab5 ;
  final String estableci_registrados_alimentos;
  final String numero_mesas_alimentos ;
  final String numero_plazas_alimentos ;
  final String observaciones_alimentos;
  final String estableci_registrados_agencias;
  final String observaciones_agencias ;
  final String local;
  final String nacional ;
  final String nacional_especializado;
  final String cultura ;
  final String aventura ;
  final String observaciones_guia;
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
  //Tabla8
  final bool politicas_si;
  final bool politicas_no;
  final bool politicas_s_i;
  final bool politicas_gad_si;
  final bool politicas_gad_no;
  final bool politicas_planificacion_si;
  final bool politicas_planificacion_no;
  final String politicas_planificacion_espec;
  final bool politicas_normativas_si;
  final bool politicas_normativas_no;
  final String politicas_normativas_espec;
  final bool politicas_ordenanzas_si;
  final bool politicas_ordenanzas_no;
  final String politicas_ordenanzas_espec;
  final String politicas_observaciones;
  //Tabla9
  final bool actividades_si;
  final bool actividades_no;
  final bool actividades_s_i;
  final bool atractivo_natural;
  final bool atractivo_agua;
  final bool atractivo_agua_buceo;
  final bool atractivo_agua_kayak_mar;
  final bool atractivo_agua_kayak_lacustre;
  final bool atractivo_agua_kayak_rio;
  final bool atractivo_agua_surf;
  final bool atractivo_agua_kite;
  final bool atractivo_agua_raft;
  final bool atractivo_agua_snorkel;
  final bool atractivo_agua_tubing;
  final bool atractivo_agua_regata;
  final bool atractivo_agua_paseo_panga;
  final bool atractivo_agua_paseo_bote;
  final bool atractivo_agua_paseo_lancha;
  final bool atractivo_agua_paseo_moto;
  final bool atractivo_agua_para;
  final bool atractivo_agua_esqui;
  final bool atractivo_agua_banana;
  final bool atractivo_agua_boya;
  final bool atractivo_agua_pesca;
  final bool atractivo_agua_otro;
  final String atractivo_agua_otro_txt;
  final String atractivo_agua_observaciones;
  final bool atractivo_aire;
  final bool atractivo_aire_alas;
  final bool atractivo_aire_canopy;
  final bool atractivo_aire_parante;
  final bool atractivo_aire_otro;
  final String atractivo_aire_otro_txt;
  final bool atractivo_terrestre;
  final bool atractivo_terrestre_montanismo;
  final bool atractivo_terrestre_escalada;
  final bool atractivo_terrestre_senderismo;
  final bool atractivo_terrestre_ciclo;
  final bool atractivo_terrestre_cany;
  final bool atractivo_terrestre_cuevas;
  final bool artractivo_terrestre_recreativas;
  final bool atractivo_terrestre_cabalgata;
  final bool atractivo_terrestre_caminata;
  final bool atractivo_terrestre_camping;
  final bool atractivo_terrestre_picnic;
  final bool atractivo_terrestre_flora;
  final bool atractivo_terrestre_astros;
  final bool atractivo_terrestre_otro;
  final String atractivo_terrestre_otro_txt;
  final String atractivo_terrestre_observaciones;
  final bool atractivo_cultural;
  final bool atractivo_cultural_t_i;
  final bool atractivo_cultural_recorrido_g;
  final bool atractivo_cultural_recorrido_a;
  final bool atractivo_cultural_talleres;
  final bool atractivo_cultural_participacion_talleres;
  final bool atractivo_cultural_talleres_a;
  final bool atractivo_cultural_participacion_artesanales;
  final bool atractivo_cultural_esposiciones;
  final bool atractivo_cultural_exhibicion;
  final bool atractivo_cultural_vivencia;
  final bool atractivo_cultural_presentaciones;
  final bool atractivo_cultural_audiovisuales;
  final bool atractivo_cultural_foto;
  final bool atractivo_cultural_platos;
  final bool atractivo_cultural_celebracion;
  final bool atractivo_cultural_compra;
  final bool atractivo_cultural_convivencia;
  final bool atractivo_cultural_medicina;
  final bool atractivo_cultural_otro;
  final String atractivo_cultural_otro_txt;
  final String atractivo_cultural_observaciones;
  //Table10
  final bool promocion_si;
  final bool promocion_no;
  final bool promocion_s_i;
  final bool promocion_plan_si;
  final bool promocion_plan_no;
  final String promocion_plan_especificacion;
  final bool promocion_plan_include_si;
  final bool promocion_plan_include_no;
  final bool medio_web;
  final bool medio_social;
  final bool medio_revista;
  final bool medio_pop;
  final bool medio_oficina;
  final bool medio_comunicacion;
  final bool medio_ferias;
  final bool medio_otro;
  final String direccion_medio_web;
  final String direccion_medio_social;
  final String direccion_medio_revista;
  final String direccion_medio_pop;
  final String direccion_medio_oficina;
  final String direccion_medio_comunicacion;
  final String direccion_medio_ferias;
  final String direccion_medios_otro;
  final String periodicidad_web;
  final String periodicidad_social;
  final String periodicidad_revista;
  final String periodicidad_pop;
  final String periodicidad_oficina;
  final String periodicidad_comunicacion;
  final String periodicidad_ferias;
  final String periodicidad_otro;
  final String medios_promocion_observaciones;
  final String atractivo_oferta_especifique;
  final String atractivo_oferta_observaciones;
  final bool atractivo_oferta_si;
  final bool atractivo_oferta_no;
  final String chosenValueWeb;
  final String chosenValueSocial;
  final String chosenValueRevista;
  final String chosenValuepop;
  final String chosenValueOficina;
  final String chosenValueComunicacion;
  final String chosenValueFerias;
  final String chosenValueOtro;
  //Tabla11
  final bool registro_visitantes_si;
  final bool registro_visitantes_no;
  final bool registro_visitantes_s_i;
  final bool frecuencia_visita_si;
  final bool sistema_registro_si;
  final bool sistema_registro_no;
  final bool sistema_registro_digital;
  final bool sistema_registro_papel;
  final String sistema_registro_anio;
  final bool reporte_estadisticas_si;
  final bool reporte_estadisticas_no;
  final bool temporalidad_alta;
  final bool temporalidad_baja;
  final String espec_temporalidad_alta;
  final String espec_temporalidad_baja;
  final String espec_temporalidad_alta_visitantes;
  final String espec_temporalidad_baja_visitantes;
  final bool turista_nacional;
  final bool turista_extranjero;
  final String turista_nacional_ciudad;
  final String turista_nacional_mensual;
  final String turista_nacional_anual;
  final String turista_extranjero_ciudad;
  final String turista_extranjero_mensual;
  final String turista_extranjero_anual;
  final String frecuencia_visita;
  final bool frencuencia_visita_clave_si;
  final String nombre_informante;
  final String contactos;
  final bool demanda_dias_si;
  final bool demanda_frecuencia_si;
  final bool demanda_frecuencia_permanente;
  final bool demanda_frecuencia_estacional;
  final bool demanda_frecuencia_esporadica;
  final bool demanda_frecuencia_inexistente;
  final String demanda_dias_lun_vie;
  final String demanda_dias_fines;
  final String demanda_dias_feriados;
  final String frecuencia_visita_clave;
  final String chosenValue_reporte_estadisticas;
  //Tabla12
  bool recurso_humano_si;
  bool recurso_humano_no ;
  bool recurso_humano_s_i ;
  bool personas_administracion_si;
  bool personas_especializadas_si ;
  bool personas_nivel_instruccion;
  bool personas_capacitadas ;
  bool personas_idiomas ;
  String personas_administracion;
  String personas_especializadas ;
  String personas_primaria ;
  String personas_secundaria ;
  String personas_tercer_nivel ;
  String personas_cuarto_nivel ;
  String personas_primeros_auxilios ;
  String personas_hospitalidad;
  String personas_atencion_cliente ;
  String personas_guianza ;
  String personas_discapacidades ;
  String personas_capacitadas_otros ;
  String personas_ingles ;
  String personas_aleman ;
  String personas_frances ;
  String personas_italiano ;
  String personas_chino ;
  String personas_idioma_otro ;
  String personas_nivel_otro ;
  String recurso_humano ;

  TurismTable13({Key? key,
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
    required this.temperatura,
    required this.precipitacion,
    required this.especificar,
    required this.precio,
    required this.meses_recomen,
    required this.observaciones,
    required this.ciudad_cercana,
    required this.distancia_ciudad,
    required this.tiempo_auto,
    required this.latitudTab4,
    required this.longitudTab4,
    required this.observaciones_accs,
    required this.coor_inicio,
    required this.coor_fin,
    required this.distancia,
    required this.tipo_material,
    required this.estado,
    required this.observaciones_terrestre,
    required this.puerto,
    required this.observaciones_acuatico,
    required this.observaciones_aereo,
    required this.especifique_servicio,
    required this.observaciones_servicio,
    required this.estableci_registrados,
    required this.numero_mesas,
    required this.numero_plazas,
    required this.observacionesTab5,
    required this.estableci_registrados_alimentos,
    required this.numero_mesas_alimentos,
    required this.numero_plazas_alimentos,
    required this.observaciones_alimentos,
    required this.estableci_registrados_agencias,
    required this.observaciones_agencias,
    required this.local,
    required this.nacional,
    required this.nacional_especializado,
    required this.cultura,
    required this.aventura,
    required this.observaciones_guia,
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
    //Tabla8
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
    required this.politicas_observaciones,
    //Tabla9
    required this.actividades_si,
    required this.actividades_no,
    required this.actividades_s_i,
    required this.atractivo_natural,
    required this.atractivo_agua,
    required this.atractivo_agua_buceo,
    required this.atractivo_agua_kayak_mar,
    required this.atractivo_agua_kayak_lacustre,
    required this.atractivo_agua_kayak_rio,
    required this.atractivo_agua_surf,
    required this.atractivo_agua_kite,
    required this.atractivo_agua_raft,
    required this.atractivo_agua_snorkel,
    required this.atractivo_agua_tubing,
    required this.atractivo_agua_regata,
    required this.atractivo_agua_paseo_panga,
    required this.atractivo_agua_paseo_bote,
    required this.atractivo_agua_paseo_lancha,
    required this.atractivo_agua_paseo_moto,
    required this.atractivo_agua_para,
    required this.atractivo_agua_esqui,
    required this.atractivo_agua_banana,
    required this.atractivo_agua_boya,
    required this.atractivo_agua_pesca,
    required this.atractivo_agua_otro,
    required this.atractivo_agua_otro_txt,
    required this.atractivo_agua_observaciones,
    required this.atractivo_aire,
    required this.atractivo_aire_alas,
    required this.atractivo_aire_canopy,
    required this.atractivo_aire_parante,
    required this.atractivo_aire_otro,
    required this.atractivo_aire_otro_txt,
    required this.atractivo_terrestre,
    required this.atractivo_terrestre_montanismo,
    required this.atractivo_terrestre_escalada,
    required this.atractivo_terrestre_senderismo,
    required this.atractivo_terrestre_ciclo,
    required this.atractivo_terrestre_cany,
    required this.atractivo_terrestre_cuevas,
    required this.artractivo_terrestre_recreativas,
    required this.atractivo_terrestre_cabalgata,
    required this.atractivo_terrestre_caminata,
    required this.atractivo_terrestre_camping,
    required this.atractivo_terrestre_picnic,
    required this.atractivo_terrestre_flora,
    required this.atractivo_terrestre_astros,
    required this.atractivo_terrestre_otro,
    required this.atractivo_terrestre_otro_txt,
    required this.atractivo_terrestre_observaciones,
    required this.atractivo_cultural,
    required this.atractivo_cultural_t_i,
    required this.atractivo_cultural_recorrido_g,
    required this.atractivo_cultural_recorrido_a,
    required this.atractivo_cultural_talleres,
    required this.atractivo_cultural_participacion_talleres,
    required this.atractivo_cultural_talleres_a,
    required this.atractivo_cultural_participacion_artesanales,
    required this.atractivo_cultural_esposiciones,
    required this.atractivo_cultural_exhibicion,
    required this.atractivo_cultural_vivencia,
    required this.atractivo_cultural_presentaciones,
    required this.atractivo_cultural_audiovisuales,
    required this.atractivo_cultural_foto,
    required this.atractivo_cultural_platos,
    required this.atractivo_cultural_celebracion,
    required this.atractivo_cultural_compra,
    required this.atractivo_cultural_convivencia,
    required this.atractivo_cultural_medicina,
    required this.atractivo_cultural_otro,
    required this.atractivo_cultural_otro_txt,
    required this.atractivo_cultural_observaciones,
    //Tabla10
    required this.promocion_si,
    required this.promocion_no,
    required this.promocion_s_i,
    required this.promocion_plan_si,
    required this.promocion_plan_no,
    required this.promocion_plan_especificacion,
    required this.promocion_plan_include_si,
    required this.promocion_plan_include_no,
    required this.medio_web,
    required this.medio_social,
    required this.medio_revista,
    required this.medio_pop,
    required this.medio_oficina,
    required this.medio_comunicacion,
    required this.medio_ferias,
    required this.medio_otro,
    required this.direccion_medio_web,
    required this.direccion_medio_social,
    required this.direccion_medio_revista,
    required this.direccion_medio_pop,
    required this.direccion_medio_oficina,
    required this.direccion_medio_comunicacion,
    required this.direccion_medio_ferias,
    required this.direccion_medios_otro,
    required this.periodicidad_web,
    required this.periodicidad_social,
    required this.periodicidad_revista,
    required this.periodicidad_pop,
    required this.periodicidad_oficina,
    required this.periodicidad_comunicacion,
    required this.periodicidad_ferias,
    required this.periodicidad_otro,
    required this.medios_promocion_observaciones,
    required this.atractivo_oferta_especifique,
    required this.atractivo_oferta_observaciones,
    required this.atractivo_oferta_si,
    required this.atractivo_oferta_no,
    //Table11
    required this.registro_visitantes_si,
    required this.registro_visitantes_no,
    required this.registro_visitantes_s_i,
    required this.frecuencia_visita_si,
    required this.sistema_registro_si,
    required this.sistema_registro_no,
    required this.sistema_registro_digital,
    required this.sistema_registro_papel,
    required this.sistema_registro_anio,
    required this.reporte_estadisticas_si,
    required this.reporte_estadisticas_no,
    required this.temporalidad_alta,
    required this.temporalidad_baja,
    required this.espec_temporalidad_alta,
    required this.espec_temporalidad_baja,
    required this.espec_temporalidad_alta_visitantes,
    required this.espec_temporalidad_baja_visitantes,
    required this.turista_nacional,
    required this.turista_extranjero,
    required this.turista_nacional_ciudad,
    required this.turista_nacional_mensual,
    required this.turista_nacional_anual,
    required this.turista_extranjero_ciudad,
    required this.turista_extranjero_mensual,
    required this.turista_extranjero_anual,
    required this.frecuencia_visita,
    required this.frencuencia_visita_clave_si,
    required this.nombre_informante,
    required this.contactos,
    required this.demanda_dias_si,
    required this.demanda_frecuencia_si,
    required this.demanda_frecuencia_permanente,
    required this.demanda_frecuencia_estacional,
    required this.demanda_frecuencia_esporadica,
    required this.demanda_frecuencia_inexistente,
    required this.demanda_dias_lun_vie,
    required this.demanda_dias_fines,
    required this.demanda_dias_feriados,
    required this.frecuencia_visita_clave,
    //Tabla12
    required this.recurso_humano_si,
    required this.recurso_humano_no,
    required this.recurso_humano_s_i,
    required this.personas_administracion_si,
    required this.personas_especializadas_si,
    required this.personas_nivel_instruccion,
    required this.personas_capacitadas,
    required this.personas_idiomas,
    required this.personas_administracion,
    required this.personas_especializadas,
    required this.personas_primaria,
    required this.personas_secundaria,
    required this.personas_tercer_nivel,
    required this.personas_cuarto_nivel,
    required this.personas_primeros_auxilios,
    required this.personas_hospitalidad,
    required this.personas_atencion_cliente,
    required this.personas_guianza,
    required this.personas_discapacidades,
    required this.personas_capacitadas_otros,
    required this.personas_ingles,
    required this.personas_aleman,
    required this.personas_frances,
    required this.personas_italiano,
    required this.personas_chino,
    required this.personas_idioma_otro,
    required this.personas_nivel_otro,
    required this.recurso_humano,
    required this.chosenValueWeb,
    required this.chosenValueSocial,
    required this.chosenValueRevista,
    required this.chosenValuepop,
    required this.chosenValueOficina,
    required this.chosenValueComunicacion,
    required this.chosenValueFerias,
    required this.chosenValueOtro,
    required this.chosenValue_reporte_estadisticas,

  });

  @override
  State<StatefulWidget> createState() => FormWidgetState13();
}

class FormWidgetState13 extends State<TurismTable13> {

  static TextEditingController obs_descripcion_atractivo = TextEditingController();
  //VARIABLES
  String descripcion_atractivo = obs_descripcion_atractivo.text;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('13. DESCRIPCIÓN DEL ATRACTIVO',
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
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: obs_descripcion_atractivo,
                    maxLength: 500,
                    maxLines: 10,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: HexColor("#0D0D0D"),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      hintText:
                      "Ingrese sus observaciones sobre el atractivo",
                      labelText: ("Descripción"),
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
    );
  }

  void _sendData(BuildContext context) {
    Navigator.push(context,
        //MaterialPageRoute(builder: (context) => TurismTable14())
        MaterialPageRoute(builder: (context) => TurismTable16())
    );
  }

}