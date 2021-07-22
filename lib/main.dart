
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/components/home.dart';
import 'package:turismo_flutter/pages/initial_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      initialRoute: Initial_page.ROUTE,
      routes: {
          Initial_page.ROUTE: (_) => Home(),
      },
    );
  }
}
