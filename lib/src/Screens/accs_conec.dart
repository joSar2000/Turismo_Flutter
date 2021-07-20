import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccsConec extends StatefulWidget {
  @override
  _AccsConecState createState() => _AccsConecState();
}

class _AccsConecState extends State<AccsConec> {
  String _seleccion = "Primer Orden";
  String _seleccion1 = "Maritimo";
  String _seleccion2 = "Nacional";
  String _seleccion3 = "Bus";
  String ciudad_cercana = "";
  int distancia_ciudad = 0;
  int tiempo_auto = 0;
  int latitud = 0;
  int longitud = 0;
  String observaciones_accs = "";
  int coor_inicio = 0;
  int coor_fin = 0;
  int distancia = 0;
  String tipo_material = "";
  String estado = "";
  String observaciones_terrestre = "";
  String puerto = "";
  String observaciones_acuatico = "";
  String observaciones_aereo = "";
  String especifique_servicio = "";
  String observaciones_servicio = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text("Acceso y Conexión al Atractivo",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
                  labelText: "Nombre de la ciudad más cercana:"),
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
              decoration:
                  InputDecoration(labelText: "Distancia desde la ciudad:"),
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
              decoration:
                  InputDecoration(labelText: "Tiempo en auto al atractivo:"),
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
              decoration: InputDecoration(labelText: "Latitud:"),
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
              decoration: InputDecoration(labelText: "Longitud:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Observaciones:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          Center(
              child: Text("VÍAS DE ACCESO",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ))),
          Center(
              child: Text("Terrestre (M)",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ))),
          _crearComboBox("Tipo de Via"),
          TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: "Coordenada de Inicio:"),
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
              decoration: InputDecoration(labelText: "Coordenada de Fin:"),
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
              decoration: InputDecoration(labelText: "Distancia(km)"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Tipo de material"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Estado"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Observaciones:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          Center(
              child: Text("Acuático (U)",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ))),
          _crearComboBox1("Tipo de Via"),
          TextField(
              decoration:
                  InputDecoration(labelText: "Puerto/Muelle de Partida"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Observaciones:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          Center(
              child: Text("Aéreo (U)",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ))),
          _crearComboBox2("Tipo de Vuelo"),
          TextField(
              decoration: InputDecoration(labelText: "Observaciones:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          Center(
              child: Text("SERVICIO DE TRANSPORTE",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ))),
          _crearComboBox3("Servicios"),
          TextField(
              decoration: InputDecoration(labelText: "Especifique:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Observaciones:"),
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
                Navigator.pushNamed(context, 'plantaTuristica');
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
          items: <String>['Primer Orden', 'Segundo Orden', 'Tercer Orden']
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
          items: <String>['Maritimo', 'Lacustre', 'Fluvial']
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
          items: <String>['Nacional', 'Internacional']
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

  _crearComboBox3(String texto) {
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
          value: _seleccion3,
          onChanged: (value) {
            setState(() {
              _seleccion3 = value.toString();
            });
          },
          items: <String>[
            'Bus',
            'Buseta',
            'Transporte 4x4',
            'Taxi',
            'Moto taxi',
            'Teleferico',
            'Lancha',
            'Bote',
            'Barco',
            'Canoa',
            'Avion',
            'Avioneta',
            'Helicoptero',
            'Otro'
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
