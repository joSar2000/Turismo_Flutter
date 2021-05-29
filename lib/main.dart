import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final firebaseInstance = FirebaseFirestore.instance;
  void getData() {
    firebaseInstance.collection("usuario").add({
      "Nombre": "Jorge",
      "Apellido" : "Sarmiento"
    });
  }

  //var data = new GetData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio APP',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ATRACTIVOS TURISTICOS DEL ECUADOR"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  getData();
                },
                child: Text(
                    "Añadir"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
