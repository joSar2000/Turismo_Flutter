import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:turismo_flutter/pages/initial_page.dart';

class final_page extends StatefulWidget {
  //Tabla1
  final String categoria;
  final String tipo;
  final String subtipo;
  //Tabla2
  final String calle_prin;
  final String num_lugar;
  final String transversal;
  final String latitud;
  final String longitud;
  final String altura;
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
  final String estado;
  final String observaciones_terrestre;
  final String puerto;
  final String observaciones_acuatico;
  final String observaciones_aereo;
  final String especifique_servicio;
  final String observaciones_servicio;
  //Tabla5
  final String estableci_registrados;
  final String numero_mesas;
  final String numero_plazas;
  final String observacionesTab5;
  final String estableci_registrados_alimentos;
  final String numero_mesas_alimentos;
  final String numero_plazas_alimentos;
  final String observaciones_alimentos;
  final String estableci_registrados_agencias;
  final String observaciones_agencias;
  final String local;
  final String nacional;
  final String nacional_especializado;
  final String cultura;
  final String aventura;
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
  final double ponderacionTab6;
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
  final double ponderacionTab7;
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
  final double ponderacionTab8;
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
  final double ponderacionTab9;
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
  final double ponderacionTab10;
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
  final double ponderacionTab11;
  //Tabla12
  final bool recurso_humano_si;
  final bool recurso_humano_no;
  final bool recurso_humano_s_i;
  final bool personas_administracion_si;
  final bool personas_especializadas_si;
  final bool personas_nivel_instruccion;
  final bool personas_capacitadas;
  final bool personas_idiomas;
  final String personas_administracion;
  final String personas_especializadas;
  final String personas_primaria;
  final String personas_secundaria;
  final String personas_tercer_nivel;
  final String personas_cuarto_nivel;
  final String personas_primeros_auxilios;
  final String personas_hospitalidad;
  final String personas_atencion_cliente;
  final String personas_guianza;
  final String personas_discapacidades;
  final String personas_capacitadas_otros;
  final String personas_ingles;
  final String personas_aleman;
  final String personas_frances;
  final String personas_italiano;
  final String personas_chino;
  final String personas_idioma_otro;
  final String personas_nivel_otro;
  final String recurso_humano;
  final double ponderacionTab12;
  //Taba13
  final String descripcion_atractivo;
  //Tabla16
  final String nombres;
  final String institucion;
  final String cargo;
  final String email;
  final String telefono;
  final String firma;

  const final_page({
    Key? key,
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
    required this.ponderacionTab6,
    required this.ponderacionTab7,
    required this.ponderacionTab8,
    required this.ponderacionTab9,
    required this.ponderacionTab10,
    required this.ponderacionTab11,
    required this.ponderacionTab12,
    required this.descripcion_atractivo,
    required this.nombres,
    required this.institucion,
    required this.cargo,
    required this.email,
    required this.telefono,
    required this.firma,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => FinalPage();
}

class FinalPage extends State<final_page> {

  String jerarquia = "";
  double suma = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suma = 0;
    jerarquia = "";
    _setJerarquia();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('GRACIAS POR SU COLABORACIÓN',
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
        ),
        body: ListView(
          children: <Widget> [
            Column(
              children: <Widget> [
                 Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "Gracias por ayudarnos a rellenar este formulario.\n"
                          "A continuación, pulsa el botón de la parte inferior para enviar tus datos.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: HexColor("#364C59"),
                      )),
                ),
                new Container(
                  child: Text(
                      "RESULTADOS",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      )),
                ),
                new Container(
                  margin: EdgeInsets.all(5.0),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.black, style: BorderStyle.solid, width: 1),
                    children: [
                      TableRow(
                        children: [
                          Column(
                            children: <Widget> [
                                Text(
                                  "N°",
                                  textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: HexColor("#A65005"),
                                    )
                                ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              Text(
                                  "Criterios de Valoración",
                                textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: HexColor("#A65005"),
                                  )
                              )
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                  "Ponderación",
                                textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: HexColor("#A65005"),
                                  )
                              )
                            ],
                          )
                        ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "1",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Accesibilidad y Conectividad",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "null",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "2",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Planta Turística/Complementarios",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "null",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Estado de Conservación e Integración Sitio/Entorno",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab6}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "4",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Higiene y Seguridad Turística",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab7}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "5",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Políticas y Regulaciones",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab8}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "6",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Actividades que se Practican en el Atractivo",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab9}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "7",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Difusión, Medios de Promoción y Comercialización del Atractivo",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab10}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow
                        (
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "8",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Registro de Visitantes y Afluencia",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab11}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            )
                          ]
                      ),
                      TableRow(
                          children: [
                            Column(
                              children: <Widget> [
                                Text(
                                    "9",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                    "Recursos Humanos",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: <Widget> [
                                Text(
                                    "${widget.ponderacionTab12}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )
                                )
                              ],
                            )
                          ]
                      )
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(5.0),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.black, style: BorderStyle.solid, width: 1),
                    children: [
                      TableRow(
                        children: [
                          Column(
                            children: <Widget> [
                              Text(
                                  "Total:",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: HexColor("#A65005"),
                                  )
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                  "${suma}",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: HexColor("#A65005"),
                                  )
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                  "${jerarquia}",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: HexColor("#A65005"),
                                  )
                              ),
                            ],
                          )
                        ]
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          backgroundColor: Colors.yellow,
          onPressed: () {
            _sendData(context);
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat
      ),
    );
  }

  _setJerarquia () {

    suma = widget.ponderacionTab6 + widget.ponderacionTab7 + widget.ponderacionTab8 +
    widget.ponderacionTab9 + widget.ponderacionTab10 + widget.ponderacionTab11 + widget.ponderacionTab11 +
    widget.ponderacionTab12;

     if (suma >= 11 && suma <= 35) {
      jerarquia = "I";
    } else if (suma >= 36 && suma <= 60) {
      jerarquia = "II";
    } else if (suma >= 61 && suma <= 85) {
      jerarquia = "III";
    } else if (suma >= 86 && suma <= 100) {
      jerarquia = "IV";
    }
  }

  void _sendData(BuildContext context) {
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
      'fecha_declaracion_espacio': widget.fecha_declaracion_espacio,
      'alcance_espacio': widget.alcance_espacio,
      'observaciones_espacio': widget.observaciones_espacio,
      'si_higiene_turistica': widget.si_higiene_turistica,
      'no_higiene_turistica': widget.no_higiene_turistica,
      's_i_higiene_turistica': widget.s_i_higiene_turistica,
      'servicio_basico': widget.servicio_basico,
      'atractivo_servicio_basico': widget.atractivo_servicio_basico,
      'agua_servicio': widget.agua_servicio,
      'especifique_agua_atractivo': widget.especifique_agua_atractivo,
      'agua_atractivo': widget.agua_atractivo,
      'energia_atractivo': widget.energia_atractivo,
      'energia_ciudad': widget.energia_ciudad,
      'especifique_energia_atractivo': widget.especifique_energia_atractivo,
      'saneamiento_atractivo': widget.saneamiento_atractivo,
      'especifique_saneamiento_atractivo':
          widget.especifique_saneamiento_atractivo,
      'desechos_atractivo': widget.desechos_atractivo,
      'especifique_desechos_atractivo': widget.especifique_desechos_atractivo,
      'onservaciones_atractivo_ciudad': widget.onservaciones_atractivo_ciudad,
      'ciudad_poblado_servicio_basico': widget.ciudad_poblado_servicio_basico,
      'agua_ciudad': widget.agua_ciudad,
      'especifique_agua_ciudad': widget.especifique_agua_ciudad,
      'especifique_energia_ciudad': widget.especifique_energia_ciudad,
      'saneamiento_ciudad': widget.saneamiento_ciudad,
      'especifique_saneamiento_ciudad': widget.especifique_saneamiento_ciudad,
      'desechos_ciudad': widget.desechos_ciudad,
      'especifique_desechos_ciudad': widget.especifique_desechos_ciudad,
      'senialeticas_atarctivo': widget.senialeticas_atarctivo,
      'areas_urbanas': widget.areas_urbanas,
      'pic_a_n_madera': widget.pic_a_n_madera,
      'pic_a_n_aluminio': widget.pic_a_n_aluminio,
      'pic_a_n_otro': widget.pic_a_n_otro,
      'especifique_pic_a_n': widget.especifique_pic_a_n,
      'pic_a_n_bueno': widget.pic_a_n_bueno,
      'pic_a_n_regular': widget.pic_a_n_regular,
      'pic_a_n_malo': widget.pic_a_n_malo,
      'pic_a_c_madera': widget.pic_a_c_madera,
      'pic_a_c_aluminio': widget.pic_a_c_aluminio,
      'pic_a_c_otro': widget.pic_a_c_otro,
      'especifique_pic_a_c': widget.especifique_pic_a_c,
      'pic_a_c_bueno': widget.pic_a_c_bueno,
      'pic_a_c_regular': widget.pic_a_c_regular,
      'pic_a_c_malo': widget.pic_a_c_malo,
      'pic_a_t_madera': widget.pic_a_t_madera,
      'pic_a_t_aluminio': widget.pic_a_t_aluminio,
      'pic_a_t_otro': widget.pic_a_t_otro,
      'especifique_pic_a_t': widget.especifique_pic_a_t,
      'pic_a_t_bueno': widget.pic_a_t_bueno,
      'pic_a_t_regular': widget.pic_a_t_regular,
      'pic_a_t_malo': widget.pic_a_t_malo,
      'pic_s_a_madera': widget.pic_s_a_madera,
      'pic_s_a_aluminio': widget.pic_s_a_aluminio,
      'pic_s_a_otro': widget.pic_s_a_otro,
      'especifique_pic_s_a': widget.especifique_pic_s_a,
      'pic_s_a_bueno': widget.pic_s_a_bueno,
      'pic_s_a_regular': widget.pic_s_a_regular,
      'pic_s_a_malo': widget.pic_s_a_malo,
      'pic_r_madera': widget.pic_r_madera,
      'pic_r_aluminio': widget.pic_r_aluminio,
      'pic_r_otro': widget.pic_r_otro,
      'especifique_pic_r': widget.especifique_pic_r,
      'pic_r_bueno': widget.pic_r_bueno,
      'pic_r_regular': widget.pic_r_regular,
      'pic_r_malo': widget.pic_r_malo,
      'totems_a_t_madera': widget.totems_a_t_madera,
      'totems_a_t_aluminio': widget.totems_a_t_aluminio,
      'totems_a_t_otro': widget.totems_a_t_otro,
      'especifique_totems_a_t': widget.especifique_totems_a_t,
      'totems_a_t_bueno': widget.totems_a_t_bueno,
      'totems_a_t_regular': widget.totems_a_t_regular,
      'totems_a_t_malo': widget.totems_a_t_malo,
      'totems_s_madera': widget.totems_s_madera,
      'totems_s_aluminio': widget.totems_s_aluminio,
      'totems_s_otro': widget.totems_s_otro,
      'especifique_totems_s': widget.especifique_totems_s,
      'totems_s_bueno': widget.totems_s_bueno,
      'totems_s_regular': widget.totems_s_regular,
      'totems_s_malo': widget.totems_s_malo,
      'totems_d_madera': widget.totems_d_madera,
      'totems_d_aluminio': widget.totems_d_aluminio,
      'totems_d_otro': widget.totems_d_otro,
      'especifique_totems_d': widget.especifique_totems_d,
      'totems_d_bueno': widget.totems_d_bueno,
      'totems_d_regular': widget.totems_d_regular,
      'totems_d_malo': widget.totems_d_malo,
      'areas_naturales': widget.areas_naturales,
      'pic_a_n_madera_N': widget.pic_a_n_madera_N,
      'pic_a_n_aluminio_N': widget.pic_a_n_aluminio_N,
      'pic_a_n_otro_N': widget.pic_a_n_otro_N,
      'especifique_pic_a_n_N': widget.especifique_pic_a_n_N,
      'pic_a_n_bueno_N': widget.pic_a_n_bueno_N,
      'pic_a_n_regular_N': widget.pic_a_n_regular_N,
      'pic_a_n_malo_N': widget.pic_a_n_malo_N,
      'pic_a_c_bueno_N': widget.pic_a_c_bueno_N,
      'pic_a_c_regular_N': widget.pic_a_c_regular_N,
      'pic_a_c_malo_N': widget.pic_a_c_malo_N,
      'pic_a_t_bueno_N': widget.pic_a_t_bueno_N,
      'pic_a_t_regular_N': widget.pic_a_t_regular_N,
      'pic_a_t_malo_N': widget.pic_a_t_malo_N,
      'pic_a_t_madera_N': widget.pic_a_t_madera_N,
      'pic_a_t_aluminio_N': widget.pic_a_t_aluminio_N,
      'pic_a_t_otro_N': widget.pic_a_t_otro_N,
      'especifique_pic_a_t_N': widget.especifique_pic_a_t_N,
      'pic_s_a_bueno_N': widget.pic_s_a_bueno_N,
      'pic_s_a_regular_N': widget.pic_s_a_regular_N,
      'pic_s_a_malo_N': widget.pic_s_a_malo_N,
      'pic_r_madera_N': widget.pic_r_madera_N,
      'pic_r_alumunio_N': widget.pic_r_alumunio_N,
      'pic_r_otro_N': widget.pic_r_otro_N,
      'especifique_pic_r_N': widget.especifique_pic_r_N,
      'pic_r_bueno_N': widget.pic_r_bueno_N,
      'pic_r_regular_N': widget.pic_r_regular_N,
      'pic_r_malo_N': widget.pic_r_malo_N,
      'seniales_t_a_madera': widget.seniales_t_a_madera,
      'seniales_t_a_aluminio': widget.seniales_t_a_aluminio,
      'seniales_t_a_otro': widget.seniales_t_a_otro,
      'especifique_seniales_t_a': widget.especifique_seniales_t_a,
      'seniales_t_a_bueno': widget.seniales_t_a_bueno,
      'seniales_t_a_regular': widget.seniales_t_a_regular,
      'seniales_t_a_malo': widget.seniales_t_a_malo,
      'paneles_d_a_madera': widget.paneles_d_a_madera,
      'paneles_d_a_aluminio': widget.paneles_d_a_aluminio,
      'paneles_d_a_otro': widget.paneles_d_a_otro,
      'especifique_paneles_d_a': widget.especifique_paneles_d_a,
      'paneles_d_a_bueno': widget.paneles_d_a_bueno,
      'paneles_d_a_regular': widget.paneles_d_a_regular,
      'paneles_d_a_malo': widget.paneles_d_a_malo,
      'panel_i_a_madera': widget.panel_i_a_madera,
      'panel_i_a_aluminio': widget.panel_i_a_aluminio,
      'panel_i_a_otro': widget.panel_i_a_otro,
      'especifique_panel_i_a': widget.especifique_panel_i_a,
      'panel_i_a_bueno': widget.panel_i_a_bueno,
      'panel_i_a_regular': widget.panel_i_a_regular,
      'panel_i_a_malo': widget.panel_i_a_malo,
      'panel_i_d_madera': widget.panel_i_d_madera,
      'panel_i_d_aluminio': widget.panel_i_d_aluminio,
      'panel_i_d_otro': widget.panel_i_d_otro,
      'especifique_panel_i_d': widget.especifique_panel_i_d,
      'panel_i_d_bueno': widget.panel_i_d_bueno,
      'panel_i_d_regular': widget.panel_i_d_regular,
      'panel_i_d_malo': widget.panel_i_d_malo,
      'mesas_i_madera': widget.mesas_i_madera,
      'mesas_i_aluminio': widget.mesas_i_aluminio,
      'mesas_i_otro': widget.mesas_i_otro,
      'especifique_mesas_i': widget.especifique_mesas_i,
      'mesas_i_bueno': widget.mesas_i_bueno,
      'mesas_i_regular': widget.mesas_i_regular,
      'mesas_i_malo': widget.mesas_i_malo,
      'totems_s_madera_N': widget.totems_s_madera_N,
      'totems_s_aluminio_N': widget.totems_s_aluminio_N,
      'totems_s_otro_N': widget.totems_s_otro_N,
      'especifique_totems_s_N': widget.especifique_totems_s_N,
      'totems_s_bueno_N': widget.totems_s_bueno_N,
      'totems_s_regular_N': widget.totems_s_regular_N,
      'totems_s_malo_N': widget.totems_s_malo_N,
      'totem_d_madera': widget.totem_d_madera,
      'totem_d_aluminio': widget.totem_d_aluminio,
      'totem_d_otro': widget.totem_d_otro,
      'especifique_totem_d': widget.especifique_totem_d,
      'totem_d_bueno': widget.totem_d_bueno,
      'totem_d_regular': widget.totem_d_regular,
      'totem_d_malo': widget.totem_d_malo,
      'letreros_informativos': widget.letreros_informativos,
      'letrero_i_b_madera': widget.letrero_i_b_madera,
      'letrero_i_b_aluminio': widget.letrero_i_b_aluminio,
      'letrero_i_b_otro': widget.letrero_i_b_otro,
      'especifique_letrero_i_b': widget.especifique_letrero_i_b,
      'letrero_i_b_bueno': widget.letrero_i_b_bueno,
      'letrero_i_b_regular': widget.letrero_i_b_regular,
      'letrero_i_b_malo': widget.letrero_i_b_malo,
      'normativos_c_madera': widget.normativos_c_madera,
      'normativos_c_aluminio': widget.normativos_c_aluminio,
      'normativos_c_otro': widget.normativos_c_otro,
      'especifique_normativos_c': widget.especifique_normativos_c,
      'normativos_c_bueno': widget.normativos_c_bueno,
      'normativos_c_regular': widget.normativos_c_regular,
      'normativos_c_malo': widget.normativos_c_malo,
      'otros_senialetica': widget.otros_senialetica,
      'otros_senialetica_texto': widget.otros_senialetica_texto,
      'observaciones_senialetica': widget.observaciones_senialetica,
      'senialetica_interna': widget.senialetica_interna,
      'proteccion_elementos_madera': widget.proteccion_elementos_madera,
      'proteccion_elementos_aluminio': widget.proteccion_elementos_aluminio,
      'proteccion_elementos_otro': widget.proteccion_elementos_otro,
      'especifique_proteccion': widget.especifique_proteccion,
      'proteccion_bueno': widget.proteccion_bueno,
      'proteccion_regular': widget.proteccion_regular,
      'proteccion_malo': widget.proteccion_malo,
      'salud_cercana': widget.salud_cercana,
      'salud_atractivo': widget.salud_atractivo,
      'atractivo_hospital': widget.atractivo_hospital,
      'atractivo_centro': widget.atractivo_centro,
      'atractivo_dispensario': widget.atractivo_dispensario,
      'atractivo_botiquin': widget.atractivo_botiquin,
      'atractivo_otros': widget.atractivo_otros,
      'salud_ciudad': widget.salud_ciudad,
      'ciudad_hospital': widget.ciudad_hospital,
      'ciudad_centro': widget.ciudad_centro,
      'ciudad_dispensario': widget.ciudad_dispensario,
      'ciudad_botiquin': widget.ciudad_botiquin,
      'ciudad_otros': widget.ciudad_otros,
      'salud_observaciones': widget.salud_observaciones,
      'seguridad_privada_detalle': widget.seguridad_privada_detalle,
      'seguridad_policia_nacional_detalle':
          widget.seguridad_policia_nacional_detalle,
      'seguridad_policia_municipal_detalle':
          widget.seguridad_policia_municipal_detalle,
      'seguridad_otra_detalle': widget.seguridad_otra_detalle,
      'seguridad_M': widget.seguridad_M,
      'seguridad_privada': widget.seguridad_privada,
      'seguridad_policia_nacional': widget.seguridad_policia_nacional,
      'seguridad_policia_municipal': widget.seguridad_policia_municipal,
      'seguridad_otra': widget.seguridad_otra,
      'seguridad_observaciones': widget.seguridad_observaciones,
      'num_atractivo_centro': widget.num_atractivo_centro,
      'num_atractivo_hospital': widget.num_atractivo_hospital,
      'num_atractivo_dispensario': widget.num_atractivo_dispensario,
      'num_atractivo_botiquin': widget.num_atractivo_botiquin,
      'num_atractivo_otros': widget.num_atractivo_otros,
      'num_ciudad_hospital': widget.num_ciudad_hospital,
      'num_ciudad_centro': widget.num_ciudad_centro,
      'num_ciudad_dispensario': widget.num_ciudad_dispensario,
      'num_ciudad_botiquin': widget.num_ciudad_botiquin,
      'num_ciudad_otros': widget.num_ciudad_otros,
      'servicio_publico': widget.servicio_publico,
      'servicio_atractivo': widget.servicio_atractivo,
      'servicio_ciudad': widget.servicio_ciudad,
      'servicio_atractivo_telefonia': widget.servicio_atractivo_telefonia,
      'servicio_atractivo_internet': widget.servicio_atractivo_internet,
      'servicio_atractivo_t_fija': widget.servicio_atractivo_t_fija,
      'servicio_atractivo_t_movil': widget.servicio_atractivo_t_movil,
      'servicio_atractivo_t_satelital': widget.servicio_atractivo_t_satelital,
      'servicio_atractivo_i_fibra': widget.servicio_atractivo_i_fibra,
      'servicio_atractivo_i_satelite': widget.servicio_atractivo_i_satelite,
      'servicio_atractivo_i_redes': widget.servicio_atractivo_i_redes,
      'servicio_atractivo_i_telefonia': widget.servicio_atractivo_i_telefonia,
      'servicio_ciudad_telefonia': widget.servicio_ciudad_telefonia,
      'servicio_ciudad_internet': widget.servicio_ciudad_internet,
      'servicio_ciudad_t_fija': widget.servicio_ciudad_t_fija,
      'servicio_ciudad_t_movil': widget.servicio_ciudad_t_movil,
      'servicio_ciudad_t_satelital': widget.servicio_ciudad_t_satelital,
      'servicio_atractivo_i_linea': widget.servicio_atractivo_i_linea,
      'servicio_ciudad_i_linea': widget.servicio_ciudad_i_linea,
      'servicio_ciudad_i_fibra': widget.servicio_ciudad_i_fibra,
      'servicio_ciudad_i_satelite': widget.servicio_ciudad_i_satelite,
      'servicio_ciudad_i_redes': widget.servicio_ciudad_i_redes,
      'servicio_ciudad_i_telefonia': widget.servicio_ciudad_i_telefonia,
      'servicio_observaciones': widget.servicio_observaciones,
      'servicio_radio': widget.servicio_radio,
      'servicio_radio_exclusivo': widget.servicio_radio_exclusivo,
      'servicio_radio_interna': widget.servicio_radio_interna,
      'servicio_radio_emergencia': widget.servicio_radio_emergencia,
      'servicio_radio_observaciones': widget.servicio_radio_observaciones,
      'multiamenaza_M': widget.multiamenaza_M,
      'multiamenaza_deslaves': widget.multiamenaza_deslaves,
      'multiamenaza_sismos': widget.multiamenaza_sismos,
      'multiamenaza_erupciones': widget.multiamenaza_erupciones,
      'multiamenaza_incendios': widget.multiamenaza_incendios,
      'multiamenaza_sequia': widget.multiamenaza_sequia,
      'multiamenaza_inundaciones': widget.multiamenaza_inundaciones,
      'multiamenaza_aguajes': widget.multiamenaza_aguajes,
      'multiamenazas_tsunami': widget.multiamenazas_tsunami,
      'multiamenaza_plan_contin': widget.multiamenaza_plan_contin,
      'multiamenaza_institucion_doc': widget.multiamenaza_institucion_doc,
      'multiamenaza_nombre_doc': widget.multiamenaza_nombre_doc,
      'multiamenazas_observaciones': widget.multiamenazas_observaciones,
      'currentDate': widget.currentDate,
      'politicas_si': widget.politicas_si,
      'politicas_no': widget.politicas_no,
      'politicas_s_i': widget.politicas_s_i,
      'politicas_gad_si': widget.politicas_gad_si,
      'politicas_gad_no': widget.politicas_gad_no,
      'politicas_planificacion_si': widget.politicas_planificacion_si,
      'politicas_planificacion_no': widget.politicas_planificacion_no,
      'politicas_planificacion_espec': widget.politicas_planificacion_espec,
      'politicas_normativas_si': widget.politicas_normativas_si,
      'politicas_normativas_no': widget.politicas_normativas_no,
      'politicas_normativas_espec': widget.politicas_normativas_espec,
      'politicas_ordenanzas_si': widget.politicas_ordenanzas_si,
      'politicas_ordenanzas_no': widget.politicas_ordenanzas_no,
      'politicas_ordenanzas_espec': widget.politicas_ordenanzas_espec,
      'politicas_observaciones': widget.politicas_observaciones,
      'actividades_si': widget.actividades_si,
      'actividades_no': widget.actividades_no,
      'actividades_s_i': widget.actividades_s_i,
      'atractivo_natural': widget.atractivo_natural,
      'atractivo_agua': widget.atractivo_agua,
      'atractivo_agua_buceo': widget.atractivo_agua_buceo,
      'atractivo_agua_kayak_mar': widget.atractivo_agua_kayak_mar,
      'atractivo_agua_kayak_lacustre': widget.atractivo_agua_kayak_lacustre,
      'atractivo_agua_kayak_rio': widget.atractivo_agua_kayak_rio,
      'atractivo_agua_surf': widget.atractivo_agua_surf,
      'atractivo_agua_kite': widget.atractivo_agua_kite,
      'atractivo_agua_raft': widget.atractivo_agua_raft,
      'atractivo_agua_snorkel': widget.atractivo_agua_snorkel,
      'atractivo_agua_tubing': widget.atractivo_agua_tubing,
      'atractivo_agua_regata': widget.atractivo_agua_regata,
      'atractivo_agua_paseo_panga': widget.atractivo_agua_paseo_panga,
      'atractivo_agua_paseo_bote': widget.atractivo_agua_paseo_bote,
      'atractivo_agua_paseo_lancha': widget.atractivo_agua_paseo_lancha,
      'atractivo_agua_paseo_moto': widget.atractivo_agua_paseo_moto,
      'atractivo_agua_para': widget.atractivo_agua_para,
      'atractivo_agua_esqui': widget.atractivo_agua_esqui,
      'atractivo_agua_banana': widget.atractivo_agua_banana,
      'atractivo_agua_boya': widget.atractivo_agua_boya,
      'atractivo_agua_pesca': widget.atractivo_agua_pesca,
      'atractivo_agua_otro': widget.atractivo_agua_otro,
      'atractivo_agua_otro_txt': widget.atractivo_agua_otro_txt,
      'atractivo_agua_observaciones': widget.atractivo_agua_observaciones,
      'atractivo_aire': widget.atractivo_aire,
      'atractivo_aire_alas': widget.atractivo_aire_alas,
      'atractivo_aire_canopy': widget.atractivo_aire_canopy,
      'atractivo_aire_parante': widget.atractivo_aire_parante,
      'atractivo_aire_otro': widget.atractivo_aire_otro,
      'atractivo_aire_otro_txt': widget.atractivo_aire_otro_txt,
      'atractivo_terrestre': widget.atractivo_terrestre,
      'atractivo_terrestre_montanismo': widget.atractivo_terrestre_montanismo,
      'atractivo_terrestre_escalada': widget.atractivo_terrestre_escalada,
      'atractivo_terrestre_senderismo': widget.atractivo_terrestre_senderismo,
      'atractivo_terrestre_ciclo': widget.atractivo_terrestre_ciclo,
      'atractivo_terrestre_cany': widget.atractivo_terrestre_cany,
      'atractivo_terrestre_cuevas': widget.atractivo_terrestre_cuevas,
      'artractivo_terrestre_recreativas': widget.artractivo_terrestre_recreativas,
      'atractivo_terrestre_cabalgata': widget.atractivo_terrestre_cabalgata,
      'atractivo_terrestre_caminata': widget.atractivo_terrestre_caminata,
      'atractivo_terrestre_camping': widget.atractivo_terrestre_camping,
      'atractivo_terrestre_picnic': widget.atractivo_terrestre_picnic,
      'atractivo_terrestre_flora': widget.atractivo_terrestre_flora,
      'atractivo_terrestre_astros': widget.atractivo_terrestre_astros,
      'atractivo_terrestre_otro': widget.atractivo_terrestre_otro,
      'atractivo_terrestre_otro_txt': widget.atractivo_terrestre_otro_txt,
      'atractivo_terrestre_observaciones':
          widget.atractivo_terrestre_observaciones,
      'atractivo_cultural': widget.atractivo_cultural,
      'atractivo_cultural_t_i': widget.atractivo_cultural_t_i,
      'atractivo_cultural_recorrido_g': widget.atractivo_cultural_recorrido_g,
      'atractivo_cultural_recorrido_a': widget.atractivo_cultural_recorrido_a,
      'atractivo_cultural_talleres': widget.atractivo_cultural_talleres,
      'atractivo_cultural_participacion_talleres':
          widget.atractivo_cultural_participacion_talleres,
      'atractivo_cultural_talleres_a': widget.atractivo_cultural_talleres_a,
      'atractivo_cultural_participacion_artesanales':
          widget.atractivo_cultural_participacion_artesanales,
      'atractivo_cultural_esposiciones': widget.atractivo_cultural_esposiciones,
      'atractivo_cultural_exhibicion': widget.atractivo_cultural_exhibicion,
      'atractivo_cultural_vivencia': widget.atractivo_cultural_vivencia,
      'atractivo_cultural_presentaciones':
          widget.atractivo_cultural_presentaciones,
      'atractivo_cultural_audiovisuales': widget.atractivo_cultural_audiovisuales,
      'atractivo_cultural_foto': widget.atractivo_cultural_foto,
      'atractivo_cultural_platos': widget.atractivo_cultural_platos,
      'atractivo_cultural_celebracion': widget.atractivo_cultural_celebracion,
      'atractivo_cultural_compra': widget.atractivo_cultural_compra,
      'atractivo_cultural_convivencia': widget.atractivo_cultural_convivencia,
      'atractivo_cultural_medicina': widget.atractivo_cultural_medicina,
      'atractivo_cultural_otro': widget.atractivo_cultural_otro,
      'atractivo_cultural_otro_txt': widget.atractivo_cultural_otro_txt,
      'atractivo_cultural_observaciones': widget.atractivo_cultural_observaciones,
      'promocion_si': widget.promocion_si,
      'promocion_no': widget.promocion_no,
      'promocion_s_i': widget.promocion_s_i,
      'promocion_plan_si': widget.promocion_plan_si,
      'promocion_plan_no': widget.promocion_plan_no,
      'promocion_plan_especificacion': widget.promocion_plan_especificacion,
      'promocion_plan_include_si': widget.promocion_plan_include_si,
      'promocion_plan_include_no': widget.promocion_plan_include_no,
      'medio_web': widget.medio_web,
      'medio_social': widget.medio_social,
      'medio_revista': widget.medio_revista,
      'medio_pop': widget.medio_pop,
      'medio_oficina': widget.medio_oficina,
      'medio_comunicacion': widget.medio_comunicacion,
      'medio_ferias': widget.medio_ferias,
      'medio_otro': widget.medio_otro,
      'direccion_medio_web': widget.direccion_medio_web,
      'direccion_medio_social': widget.direccion_medio_social,
      'direccion_medio_revista': widget.direccion_medio_revista,
      'direccion_medio_pop': widget.direccion_medio_pop,
      'direccion_medio_oficina': widget.direccion_medio_oficina,
      'direccion_medio_comunicacion': widget.direccion_medio_comunicacion,
      'direccion_medio_ferias': widget.direccion_medio_ferias,
      'direccion_medios_otro': widget.direccion_medios_otro,
      'periodicidad_web': widget.periodicidad_web,
      'periodicidad_social': widget.periodicidad_social,
      'periodicidad_revista': widget.periodicidad_revista,
      'periodicidad_pop': widget.periodicidad_pop,
      'periodicidad_oficina': widget.periodicidad_oficina,
      'periodicidad_comunicacion': widget.periodicidad_comunicacion,
      'periodicidad_ferias': widget.periodicidad_ferias,
      'periodicidad_otro': widget.periodicidad_otro,
      'medios_promocion_observaciones': widget.medios_promocion_observaciones,
      'atractivo_oferta_especifique': widget.atractivo_oferta_especifique,
      'atractivo_oferta_observaciones': widget.atractivo_oferta_observaciones,
      'atractivo_oferta_si': widget.atractivo_oferta_si,
      'atractivo_oferta_no': widget.atractivo_oferta_no,
      'registro_visitantes_si': widget.registro_visitantes_si,
      'registro_visitantes_no': widget.registro_visitantes_no,
      'registro_visitantes_s_i': widget.registro_visitantes_s_i,
      'frecuencia_visita_si': widget.frecuencia_visita_si,
      'sistema_registro_si': widget.sistema_registro_si,
      'sistema_registro_no': widget.sistema_registro_no,
      'sistema_registro_digital': widget.sistema_registro_digital,
      'sistema_registro_papel': widget.sistema_registro_papel,
      'sistema_registro_anio': widget.sistema_registro_anio,
      'reporte_estadisticas_si': widget.reporte_estadisticas_si,
      'reporte_estadisticas_no': widget.reporte_estadisticas_no,
      'temporalidad_alta': widget.temporalidad_alta,
      'temporalidad_baja': widget.temporalidad_baja,
      'espec_temporalidad_alta': widget.espec_temporalidad_alta,
      'espec_temporalidad_baja': widget.espec_temporalidad_baja,
      'espec_temporalidad_alta_visitantes':
          widget.espec_temporalidad_alta_visitantes,
      'espec_temporalidad_baja_visitantes':
          widget.espec_temporalidad_baja_visitantes,
      'turista_nacional': widget.turista_nacional,
      'turista_extranjero': widget.turista_extranjero,
      'turista_nacional_ciudad': widget.turista_nacional_ciudad,
      'turista_nacional_mensual': widget.turista_nacional_mensual,
      'turista_nacional_anual': widget.turista_nacional_anual,
      'turista_extranjero_ciudad': widget.turista_extranjero_ciudad,
      'turista_extranjero_mensual': widget.turista_extranjero_mensual,
      'turista_extranjero_anual': widget.turista_extranjero_anual,
      'frecuencia_visita': widget.frecuencia_visita,
      'frencuencia_visita_clave_si': widget.frencuencia_visita_clave_si,
      'nombre_informante': widget.nombre_informante,
      'contactos': widget.contactos,
      'demanda_dias_si': widget.demanda_dias_si,
      'demanda_frecuencia_si': widget.demanda_frecuencia_si,
      'demanda_frecuencia_permanente': widget.demanda_frecuencia_permanente,
      'demanda_frecuencia_estacional': widget.demanda_frecuencia_estacional,
      'demanda_frecuencia_esporadica': widget.demanda_frecuencia_esporadica,
      'demanda_frecuencia_inexistente': widget.demanda_frecuencia_inexistente,
      'demanda_dias_lun_vie': widget.demanda_dias_lun_vie,
      'demanda_dias_fines': widget.demanda_dias_fines,
      'demanda_dias_feriados': widget.demanda_dias_feriados,
      'frecuencia_visita_clave': widget.frecuencia_visita_clave,
      'chosenValue_reporte_estadisticas': widget.chosenValue_reporte_estadisticas,
      'especificar': widget.especificar,
      'precipitacion': widget.precipitacion,
      'precio': widget.precio,
      'observaciones': widget.observaciones,
      'transversal': widget.transversal,
      'longitud': widget.longitud,
      'altura': widget.altura,
      'temperatura': widget.temperatura,
      'meses_recomen': widget.meses_recomen,
      'num_lugar': widget.num_lugar,
      'calle_prin': widget.calle_prin,
      'latitud': widget.latitud,
      'distancia': widget.distancia,
      'especifique_servicio': widget.especifique_servicio,
      'puerto': widget.puerto,
      'observaciones_servicio': widget.observaciones_servicio,
      'coor_inicio': widget.coor_inicio,
      'tipo_material': widget.tipo_material,
      'tiempo_auto': widget.tiempo_auto,
      'coor_fin': widget.coor_fin,
      'observaciones_terrestre': widget.observaciones_terrestre,
      'observaciones_accs': widget.observaciones_accs,
      'estado': widget.estado,
      'ciudad_cercana': widget.ciudad_cercana,
      'distancia_ciudad': widget.distancia_ciudad,
      'observaciones_acuatico': widget.observaciones_acuatico,
      'observaciones_aereo': widget.observaciones_aereo,
      'latitudTab4': widget.latitudTab4,
      'longitudTab4': widget.longitudTab4,
      'subtipo': widget.subtipo,
      'tipo': widget.tipo,
      'categoria': widget.categoria,
      'numero_mesas_alimentos': widget.numero_mesas_alimentos,
      'observaciones_agencias': widget.observaciones_agencias,
      'estableci_registrados_agencias': widget.estableci_registrados_agencias,
      'estableci_registrados_alimentos': widget.estableci_registrados_alimentos,
      'numero_mesas': widget.numero_mesas,
      'aventura': widget.aventura,
      'estableci_registrados': widget.estableci_registrados,
      'observaciones_guia': widget.observaciones_guia,
      'observacionesTab5': widget.observacionesTab5,
      'cultura': widget.cultura,
      'local': widget.local,
      'numero_plazas': widget.numero_plazas,
      'nacional_especializado': widget.nacional_especializado,
      'observaciones_alimentos': widget.observaciones_alimentos,
      'numero_plazas_alimentos': widget.numero_plazas_alimentos,
      'nacional': widget.nacional,
      'seleccion2': widget.seleccion2,
      'seleccion1': widget.seleccion1,
      'seleccion': widget.seleccion,
      'seleccion3': widget.seleccion3,
      'chosenValueComunicacion': widget.chosenValueComunicacion,
      'chosenValueOtro': widget.chosenValueOtro,
      'chosenValuepop': widget.chosenValuepop,
      'chosenValueSocial': widget.chosenValueSocial,
      'chosenValueFerias': widget.chosenValueFerias,
      'chosenValueWeb': widget.chosenValueWeb,
      'chosenValueOficina': widget.chosenValueOficina,
      'chosenValueRevista': widget.chosenValueRevista,
      'personas_ingles': widget.personas_ingles,
      'recurso_humano_si': widget.recurso_humano_si,
      'personas_especializadas_si': widget.personas_especializadas_si,
      'recurso_humano_no': widget.recurso_humano_no,
      'recurso_humano_s_i': widget.recurso_humano_s_i,
      'personas_administracion_si': widget.personas_administracion_si,
      'personas_nivel_instruccion': widget.personas_nivel_instruccion,
      'personas_capacitadas': widget.personas_capacitadas,
      'personas_idiomas': widget.personas_idiomas,
      'personas_administracion': widget.personas_administracion,
      'personas_especializadas': widget.personas_especializadas,
      'personas_primaria': widget.personas_primaria,
      'personas_secundaria': widget.personas_secundaria,
      'personas_tercer_nivel': widget.personas_tercer_nivel,
      'personas_cuarto_nivel': widget.personas_cuarto_nivel,
      'personas_primeros_auxilios': widget.personas_primeros_auxilios,
      'personas_hospitalidad': widget.personas_hospitalidad,
      'personas_atencion_cliente': widget.personas_atencion_cliente,
      'personas_guianza': widget.personas_guianza,
      'personas_discapacidades': widget.personas_discapacidades,
      'personas_capacitadas_otros': widget.personas_capacitadas_otros,
      'personas_aleman': widget.personas_aleman,
      'personas_frances': widget.personas_frances,
      'personas_italiano': widget.personas_italiano,
      'personas_chino': widget.personas_chino,
      'personas_idioma_otro': widget.personas_idioma_otro,
      'personas_nivel_otro': widget.personas_nivel_otro,
      'recurso_humano': widget.recurso_humano,
      'ponderacionTab6': widget.ponderacionTab6,
      'ponderacionTab7': widget.ponderacionTab7,
      'ponderacionTab8': widget.ponderacionTab8,
      'ponderacionTab9': widget.ponderacionTab9,
      'ponderacionTab10': widget.ponderacionTab10,
      'ponderacionTab11': widget.ponderacionTab11,
      'ponderacionTab12': widget.ponderacionTab12,
      'descripcion_atractivo': widget.descripcion_atractivo,
      'nombres': widget.nombres,
      'institucion': widget.institucion,
      'cargo': widget.cargo,
      'email': widget.email,
      'telefono': widget.telefono,
      'firma': widget.firma,
    });
  }
}
