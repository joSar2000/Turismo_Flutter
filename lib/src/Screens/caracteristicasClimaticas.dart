import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CaracteristicasClimaticas extends StatefulWidget {
  @override
  _CaracteristicasClimaticasState createState() =>
      _CaracteristicasClimaticasState();
}

class _CaracteristicasClimaticasState extends State<CaracteristicasClimaticas> {
  String _seleccion = "Frío";
  String _seleccion1 = "Cultura";
  String _seleccion2 = "Pristino";
  int temperatura = 0;
  int precipitacion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff885566),
          title: Text("Características del Atractivo",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              )),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              _crearComboBox("Características Climáticas"),
              TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(labelText: "Temperatura"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(labelText: "Precipitación"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              _crearComboBox1("Linea a la que pertenece"),
              _crearComboBox2(
                  "Escenario donde se localiza el atractivo turístico"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'ingreso');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  child: Text("Siguiente"))
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
            "Clima:",
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
          items: <String>['Frío', 'Templado', 'Calor']
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

  _crearComboBox2(String texto) {
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
          value: _seleccion2,
          onChanged: (value) {
            setState(() {
              _seleccion2 = value.toString();
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
}
