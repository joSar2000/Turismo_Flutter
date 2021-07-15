import 'package:flutter/material.dart';
import 'package:app_flutter_turismo/src/Screens/datosGenerales.dart';
import 'package:app_flutter_turismo/src/Routes/routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atractivos Turisticos',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => DatosGenerales());
      },
    );
  }
}
