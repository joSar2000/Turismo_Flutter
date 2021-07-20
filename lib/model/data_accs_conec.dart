import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/src/Screens/accs_conec.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 4
  int _id_accs_conec = 0;
  String _seleccion = "";
  String _seleccion1 = "";
  String _seleccion2 = "";
  String _seleccion3 = "";
  String _ciudad_cercana = "";
  int _distancia_ciudad = 0;
  int _tiempo_auto = 0;
  int _latitud = 0;
  int _longitud = 0;
  String _observaciones_accs = "";
  int _coor_inicio = 0;
  int _coor_fin = 0;
  int _distancia = 0;
  String _tipo_material = "";
  String _estado = "";
  String _observaciones_terrestre = "";
  String _puerto = "";
  String _observaciones_acuatico = "";
  String _observaciones_aereo = "";
  String _especifique_servicio = "";
  String _observaciones_servicio = "";
  
  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 1
      this._id_accs_conec,
      this._seleccion,
      this._seleccion1,
      this._seleccion2,
      this._seleccion3,
      this._ciudad_cercana,
      this._distancia_ciudad,
      this._tiempo_auto,
      this._latitud,
      this._longitud,
      this._observaciones_accs,
      this._coor_inicio,
      this._coor_fin,
      this._distancia,
      this._tipo_material,
      this._estado,
      this._observaciones_terrestre,
      this._puerto,
      this._observaciones_acuatico,
      this._observaciones_aereo,
      this._especifique_servicio,
      this._observaciones_servicio);
}