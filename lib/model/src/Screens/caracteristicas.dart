import 'package:flutter/material.dart';

class Caracteristicas extends StatefulWidget {
  @override
  _CaracteristicasState createState() => _CaracteristicasState();
}

class _CaracteristicasState extends State<Caracteristicas> {
  String _seleccion = "Cultura";
  String _seleccion1 = "Pristino";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Caracteristicas"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _crearComboBox("Linea a la que pertenece"),
              _crearComboBox1("Escenario"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () => _mostrarAlerta(context),
                  child: Text("Guardar"))
            ],
          ),
        ));
  }

  _crearComboBox(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion,
          onChanged: (value) {
            setState(() {
              _seleccion = value.toString();
            });
          },
          items: <String>['Cultura', 'Naturaleza', 'Aventura']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  _crearComboBox1(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion1,
          onChanged: (value) {
            setState(() {
              _seleccion1 = value.toString();
            });
          },
          items: <String>['Pristino', 'Primitivo', 'Rustico', 'Rural', 'Urbano']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true, //Se cierra la alerta clickando afuera
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("Confirmación"),
            content: Column(
              mainAxisSize: MainAxisSize
                  .min, //La columna se adaptara al tamaño del contenido no a toda la pantalla
              children: [
                Text("Se ha almacenado correctamente"),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Cancelar")), //Boton cancelar
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Confirmar")) //Boton confirmar
            ],
          );
        });
  }
}
