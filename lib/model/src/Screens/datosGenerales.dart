import 'package:flutter/material.dart';

class DatosGenerales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos generales"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Categoria"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Tipo"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Subtipo"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'caracteristicasClimaticas');
                  },
                  child: Text("Siguiente"))
            ],
          ),
        ),
      ),
    );
  }
}
