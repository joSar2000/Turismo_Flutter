import 'package:flutter/material.dart';
import 'package:nueva_carpeta/src/Routes/routes.dart';
import 'package:nueva_carpeta/src/Screens/datosGenerales.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examples App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => DatosGenerales());
      },
    );
  }
}
