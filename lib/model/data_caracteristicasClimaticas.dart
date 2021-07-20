import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/src/Screens/caracteristicasClimaticas.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 3
  int _id_caracteristicas_climaticas = 0;
  String _seleccion = "";
  String _seleccion1 = "";
  String _seleccion2 = "";
  int _temperatura = 0;
  int _precipitacion = 0;

  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 1
      this._id_caracteristicas_climaticas,
      this._seleccion,
      this._seleccion1,
      this._seleccion2,
      this._temperatura,
      this._precipitacion);
}
