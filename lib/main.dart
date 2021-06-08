
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/pages/viewturista_table6_1.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: turismTable6.ROUTE,
      routes: {
        turismTable6.ROUTE : (_) => turismTable6(),
        turismTable6_1.ROUTE : (_) => turismTable6_1(),
      },
    );
  }
}
