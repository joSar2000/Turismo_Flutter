import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ubicacion extends StatefulWidget {
  @override
  _UbicacionState createState() => _UbicacionState();
}

class _UbicacionState extends State<Ubicacion> {
  String _seleccion = "Loja";
  String _seleccion1 = "Catamayo";
  String _seleccion2 = "San Pedro";
  String _seleccion3 = "San Antonio";
  String calle_prin = "";
  String num_lugar = "";
  String transversal = "";
  int latitud = 0;
  int longitud = 0;
  int altura = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text("Ubicación al Atractivo",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          _crearComboBoxProvincia("Provincia"),
          _crearComboBoxCanton("Canton"),
          _crearComboBoxParroquia("Parroquia"),
          _crearComboBoxBarrio("Barrio"),
          TextField(
              decoration: InputDecoration(labelText: "Calle Principal"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Número del lugar"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Transversal"),
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
              decoration: InputDecoration(labelText: "Latitud"),
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
              decoration: InputDecoration(labelText: "Longitud"),
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
              decoration: InputDecoration(labelText: "Altura"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          /*Text(
                "Title",
                style: TextStyle(color: Colors.black, fontSize: 42.0),
              ),*/
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'caracteristicasClimaticas');
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              child: Text("Siguiente"))
        ],
      ),
    );
  }

  _crearComboBoxProvincia(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Provincia:",
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
          items: <String>['Loja', 'Imbabura', 'Azuay', 'Pichincha', 'Guayas']
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

  _crearComboBoxCanton(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Cantón:",
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
          items: <String>['Catamayo', 'Ibarra', 'Cuenca', 'Guayaquil', 'Quito']
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

  _crearComboBoxParroquia(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Parroquia:",
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
          items: <String>[
            'San Pedro',
            'Alpachaca',
            'El Salvador',
            'Ayacucho',
            'Carcelen'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  _crearComboBoxBarrio(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Barrio:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: _seleccion3,
          onChanged: (value) {
            setState(() {
              _seleccion3 = value.toString();
            });
          },
          items: <String>[
            'San Antonio',
            'Azaya',
            'El Valdo',
            'Chillogallo',
            'Samborondon'
          ].map<DropdownMenuItem<String>>((String value) {
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
