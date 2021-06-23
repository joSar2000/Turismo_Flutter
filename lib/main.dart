
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:turismo_flutter/pages/viewturista_table8.dart';
import 'package:turismo_flutter/pages/viewturista_table6_2_1.dart';
import 'package:turismo_flutter/pages/viewturista_table6_3.dart';

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

        //turismTable6_1.ROUTE : (_) => turismTable6_1(),
        //turismTable6_2.ROUTE: (_) => turismTable6_2(),
        //turismTable6_2_1.ROUTE: (_) => turismTable6_2_1(),
        //turismTable6_3.ROUTE: (_) => turismTable6_3(),
      },
    );
  }
}
