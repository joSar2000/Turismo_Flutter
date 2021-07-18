import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ingreso extends StatefulWidget {
  @override
  _IngresoState createState() => _IngresoState();
}

class _IngresoState extends State<Ingreso> {
  String _seleccion = "Libre";
  String _seleccion1 = "Todos los dias";
  String _seleccion2 = "Seleccione...";
  String _seleccion3 = "Efectivo";
  String especificar = "";
  int precio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff885566),
          title: Text("Ingreso al Atractivo",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              )),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _crearComboBox("Tipo de Ingreso"),
              _crearComboBox1("Atención"),
              TextField(
                  decoration: InputDecoration(labelText: "Especificar"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              _crearComboBox2("Maneja un sistema de reservas"),
              TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(labelText: "Precio"),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.brown.shade800,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    decorationStyle: TextDecorationStyle.solid,
                  )),
              _crearComboBox3("Forma de Pago"),
              TextField(
                  decoration: InputDecoration(
                      labelText: "Meses recomendables de visita"),
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'accs_conec');
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
          items: <String>['Libre', 'Restringido', 'Pagado']
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
          items: <String>[
            'Todos los dias',
            'Fines de semana y feriados',
            'Solo dias habiles',
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
          items: <String>['Seleccione...', 'SI', 'NO']
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
            'Efectivo',
            'Tarjeta de Crédito',
            'Dinero Electronico',
            'Transferencia Bancaria',
            'Deposito Bancario',
            'Tarjeta de Debito',
            'Cheque'
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
