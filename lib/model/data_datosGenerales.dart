import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/src/Screens/datosGenerales.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 1
  int _id_datos_generales = 0;
  String _categoria = "";
  String _tipo = "";
  String _subtipo = "";
  
  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 1
      this._id_datos_generales,
      this._categoria,
      this._tipo,
      this._subtipo);
}
