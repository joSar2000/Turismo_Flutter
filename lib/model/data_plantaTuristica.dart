import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/src/Screens/accs_conec.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 5
  int _id_planta_turistica = 0;
  String _seleccion = "En el Atractivo";
  String _seleccion1 = "Hotel";
  String _seleccion2 = "Restaurantes";
  String _seleccion3 = "Mayoristas";
  int _estableci_registrados = 0;
  int _numero_mesas = 0;
  int _numero_plazas = 0;
  String _observaciones = "";
  int _estableci_registrados_alimentos = 0;
  int _numero_mesas_alimentos = 0;
  int _numero_plazas_alimentos = 0;
  String _observaciones_alimentos = "";
  int _estableci_registrados_agencias = 0;
  String _observaciones_agencias = "";
  int _local = 0;
  int _nacional = 0;
  int _nacional_especializado = 0;
  int _cultura = 0;
  int _aventura = 0;
  String _observaciones_guia = "";

  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 1
      this._id_planta_turistica,
      this._seleccion,
      this._seleccion1,
      this._seleccion2,
      this._seleccion3,
      this._estableci_registrados,
      this._numero_mesas,
      this._numero_plazas,
      this._observaciones,
      this._estableci_registrados_alimentos,
      this._numero_mesas_alimentos,
      this._numero_plazas_alimentos,
      this._observaciones_alimentos,
      this._estableci_registrados_agencias,
      this._observaciones_agencias,
      this._local,
      this._nacional,
      this._nacional_especializado,
      this._cultura,
      this._aventura,
      this._observaciones_guia);
}
