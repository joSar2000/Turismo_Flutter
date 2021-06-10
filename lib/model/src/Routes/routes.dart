import 'package:flutter/material.dart';
import 'package:nueva_carpeta/src/Screens/caracteristicas.dart';
import 'package:nueva_carpeta/src/Screens/caracteristicasClimaticas.dart';
import 'package:nueva_carpeta/src/Screens/datosGenerales.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => DatosGenerales(),
    'caracteristicasClimaticas': (BuildContext context) =>
        CaracteristicasClimaticas(),
    'caracteristicas': (BuildContext context) => Caracteristicas(),
  };
}
