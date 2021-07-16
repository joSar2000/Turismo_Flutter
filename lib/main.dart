
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/components/home.dart';
import 'package:turismo_flutter/pages/viewturista_table1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TurismTable1.ROUTE,
      routes: {
          TurismTable1.ROUTE: (_) => Home(),
      },
    );
  }
}
