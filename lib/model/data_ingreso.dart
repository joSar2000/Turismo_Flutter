import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/src/Screens/ingreso.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 3 - restante
  int _id_ingreso = 0;
  String _seleccion = "";
  String _seleccion1 = "";
  String _seleccion2 = "";
  String _seleccion3 = "";
  String _especificar = "";
  int _precio = 0;
  
  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 1
      this._id_ingreso,
      this._seleccion,
      this._seleccion1,
      this._seleccion2,
      this._seleccion3,
      this._especificar,
      this._precio);
}