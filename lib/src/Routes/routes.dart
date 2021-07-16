import 'package:flutter/material.dart';
import 'package:app_flutter_turismo/src/Screens/ingreso.dart';
import 'package:app_flutter_turismo/src/Screens/caracteristicasClimaticas.dart';
import 'package:app_flutter_turismo/src/Screens/ubicacion.dart';
import 'package:app_flutter_turismo/src/Screens/datosGenerales.dart';
import 'package:app_flutter_turismo/src/Screens/accs_conec.dart';
import 'package:app_flutter_turismo/src/Screens/plantaTuristica.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => DatosGenerales(),
    'ubicacion': (BuildContext context) => Ubicacion(),
    'caracteristicasClimaticas': (BuildContext context) =>
        CaracteristicasClimaticas(),
    'ingreso': (BuildContext context) => Ingreso(),
    'accs_conec': (BuildContext context) => AccsConec(),
    'plantaTuristica': (BuildContext context) => PlantaTuristica(),
  };
}
