import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlantaTuristica extends StatefulWidget {
  @override
  _PlantaTuristicaState createState() => _PlantaTuristicaState();
}

class _PlantaTuristicaState extends State<PlantaTuristica> {
  String _seleccion = "En el Atractivo";
  String _seleccion1 = "Hotel";
  String _seleccion2 = "Restaurantes";
  String _seleccion3 = "Mayoristas";
  int estableci_registrados = 0;
  int numero_mesas = 0;
  int numero_plazas = 0;
  String observaciones = "";
  int estableci_registrados_alimentos = 0;
  int numero_mesas_alimentos = 0;
  int numero_plazas_alimentos = 0;
  String observaciones_alimentos = "";
  int estableci_registrados_agencias = 0;
  String observaciones_agencias = "";
  int local = 0;
  int nacional = 0;
  int nacional_especializado = 0;
  int cultura = 0;
  int aventura = 0;
  String observaciones_guia = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text("Planta Turística/Complementarios",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          _crearComboBox("Planta Turística"),
          _crearComboBox1("Alojamiento"),
          TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration:
                  InputDecoration(labelText: "Establecimientos Registrados:"),
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
              decoration: InputDecoration(labelText: "Número de Mesas:"),
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
              decoration: InputDecoration(labelText: "Número de Plazas:"),
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
          _crearComboBox2("Alimentos y bebidas"),
          TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration:
                  InputDecoration(labelText: "Establecimientos Registrados:"),
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
              decoration: InputDecoration(labelText: "Numero de Mesas:"),
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
              decoration: InputDecoration(labelText: "Número de Plazas:"),
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
          _crearComboBox3("Agencias de Viaje"),
          TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration:
                  InputDecoration(labelText: "Establecimientos Registrados:"),
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
              child: Text("GUÍA",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ))),
          TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: "Local:"),
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
              decoration: InputDecoration(labelText: "Nacional:"),
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
              decoration: InputDecoration(labelText: "Nacional Especializado:"),
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
              decoration: InputDecoration(labelText: "Cultura:"),
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
              decoration: InputDecoration(labelText: "Aventura:"),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown.shade800,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
              )),
          TextField(
              decoration: InputDecoration(labelText: "Observaciones"),
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
              onPressed: () => _mostrarAlerta(context),
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
            "Planta Turística:",
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
          items: <String>['En el Atractivo', 'Ciudad o poblado cercano']
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
            "Alojamiento:",
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
          items: <String>[
            'Hotel',
            'Hostal',
            'Hostería',
            'Hacienda Turística',
            'Lodge',
            'Resort',
            'Refugio',
            'Campamento',
            'Casas de Huéspedes'
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

  _crearComboBox2(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Alimentos y bebidas:",
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
            'Restaurantes',
            'Cafeterías',
            'Bares',
            'Fuentes de soda'
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

  _crearComboBox3(String texto) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Agencias de Viaje:",
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
          items: <String>['Mayoristas', 'Internacionales', 'Operadoras']
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
