import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/src/Screens/ubicacion.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 2
  int _id_ubicacion = 0;
  String _seleccion = "";
  String _seleccion1 = "";
  String _seleccion2 = "";
  String _seleccion3 = "";
  String _calle_prin = "";
  String _num_lugar = "";
  String _transversal = "";
  int _latitud = 0;
  int _longitud = 0;
  int _altura = 0;
  
  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 1
      this._id_ubicacion,
      this._seleccion,
      this._seleccion1,
      this._seleccion2,
      this._seleccion3,
      this._calle_prin,
      this._num_lugar,
      this._transversal,
      this._latitud,
      this._longitud,
      this._altura);
}