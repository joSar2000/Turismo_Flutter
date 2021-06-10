import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CaracteristicasClimaticas extends StatefulWidget {
  @override
  _CaracteristicasClimaticasState createState() =>
      _CaracteristicasClimaticasState();
}

class _CaracteristicasClimaticasState extends State<CaracteristicasClimaticas> {
  String _seleccion = "Frío";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Características climáticas"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              _crearComboBox(),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(labelText: "Temperatura"),
              ),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(labelText: "Precipitación"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'caracteristicas');
                  },
                  child: Text("Siguiente"))
            ],
          ),
        ));
  }

  _crearComboBox() {
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
}
