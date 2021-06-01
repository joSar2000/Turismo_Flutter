import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:turismo_flutter/pages/viewturista_tabla6.dart';
import 'package:turismo_flutter/pages/check_6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CheckBoxTurism.ROUTE,
      routes: {
        SavePage.ROUTE : (_) => SavePage(),
        CheckBoxTurism.ROUTE : (_) => CheckBoxTurism(),
      },
    );
  }
}
