
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/components/home.dart';
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
        turismTable6.ROUTE : (_) => Home(),

        //turismTable6_1.ROUTE : (_) => turismTable6_1(),
        //turismTable6_2.ROUTE: (_) => turismTable6_2(),
        //turismTable6_2_1.ROUTE: (_) => turismTable6_2_1(),
        //turismTable6_3.ROUTE: (_) => turismTable6_3(),
      },
    );
  }
}
