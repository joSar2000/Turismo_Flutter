import 'package:flutter/material.dart';

class DatosGenerales extends StatelessWidget {
  
  String categoria = "";
  String tipo = "";
  String subtipo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text("DATOS GENERALES",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Container(
          decoration: new BoxDecoration(color: Colors.white70),
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(labelText: "Categoria"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              TextField(
                  decoration: InputDecoration(labelText: "Tipo"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              TextField(
                  decoration: InputDecoration(labelText: "Subtipo"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'ubicacion');
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                child: Text("Siguiente"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
