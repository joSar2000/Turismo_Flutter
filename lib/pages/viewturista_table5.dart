import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';

class TableTurism5 extends StatefulWidget {

  //Tabla1
  final String categoria;
  final String tipo;
  final String subtipo;
  //Tabla2
  final String calle_prin;
  final String num_lugar ;
  final String transversal ;
  final String latitud ;
  final String longitud ;
  final String altura ;
  final String seleccion ;
  final String seleccion1;
  final String seleccion2 ;
  final String seleccion3 ;
  //Tabla3
  final String temperatura;
  final String precipitacion;
  final String especificar;
  final String precio;
  final String meses_recomen;
  final String observaciones;
  final String seleccionTab3;
  final String seleccion1Tab3 ;
  final String seleccion2Tab3 ;
  final String seleccion3Tab3 ;
  final String seleccion4Tab3 ;
  final String seleccion5Tab3 ;
  final String seleccion6Tab3 ;
  //Tabla4
  final String ciudad_cercana;
  final String distancia_ciudad;
  final String tiempo_auto;
  final String latitudTab4;
  final String longitudTab4;
  final String observaciones_accs;
  final String coor_inicio;
  final String coor_fin;
  final String distancia;
  final String tipo_material;
  final String estado ;
  final String observaciones_terrestre ;
  final String puerto ;
  final String observaciones_acuatico;
  final String observaciones_aereo;
  final String especifique_servicio ;
  final String observaciones_servicio ;
  final String seleccionTab4;
  final String seleccion1Tab4;
  final String seleccion2Tab4 ;
  final String seleccion3Tab4;

  TableTurism5({Key? key,
    required this.categoria,
    required this.tipo,
    required this.subtipo,
    required this.calle_prin,
    required this.num_lugar,
    required this.transversal,
    required this.latitud,
    required this.longitud,
    required this.altura,
    required this.temperatura,
    required this.precipitacion,
    required this.especificar,
    required this.precio,
    required this.meses_recomen,
    required this.observaciones,
    required this.ciudad_cercana,
    required this.distancia_ciudad,
    required this.tiempo_auto,
    required this.observaciones_accs,
    required this.coor_inicio,
    required this.coor_fin,
    required this.distancia,
    required this.tipo_material,
    required this.estado,
    required this.observaciones_terrestre,
    required this.puerto,
    required this.observaciones_acuatico,
    required this.observaciones_aereo,
    required this.especifique_servicio,
    required this.observaciones_servicio,
    required this.latitudTab4,
    required this.longitudTab4,
    required this.seleccion,
    required this.seleccion1,
    required this.seleccion2,
    required this.seleccion3,
    required this.seleccionTab3,
    required this.seleccion1Tab3,
    required this.seleccion2Tab3,
    required this.seleccion3Tab3,
    required this.seleccion4Tab3,
    required this.seleccion5Tab3,
    required this.seleccion6Tab3,
    required this.seleccionTab4,
    required this.seleccion1Tab4,
    required this.seleccion2Tab4,
    required this.seleccion3Tab4,
  }): super(key: key);

  @override
  State<StatefulWidget> createState() => new FormWidgetState5();
}

class FormWidgetState5 extends State<TableTurism5> {
  String _seleccion = "En el Atractivo";
  String _seleccion1 = "Hotel";
  String _seleccion2 = "Restaurantes";
  String _seleccion3 = "Mayoristas";

  TextEditingController planta_estableci_registrados = TextEditingController();
  TextEditingController planta_numero_mesas = TextEditingController();
  TextEditingController planta_numero_plazas = TextEditingController();
  TextEditingController planta_observaciones = TextEditingController();
  TextEditingController planta_estableci_registrados_alimentos =
  TextEditingController();
  TextEditingController planta_numero_mesas_alimentos = TextEditingController();
  TextEditingController planta_numero_plazas_alimentos =
  TextEditingController();
  TextEditingController planta_observaciones_alimentos =
  TextEditingController();
  TextEditingController planta_estableci_registrados_agencias =
  TextEditingController();
  TextEditingController planta_observaciones_agencias = TextEditingController();
  TextEditingController planta_local = TextEditingController();
  TextEditingController planta_nacional = TextEditingController();
  TextEditingController planta_nacional_especializado = TextEditingController();
  TextEditingController planta_cultura = TextEditingController();
  TextEditingController planta_aventura = TextEditingController();
  TextEditingController planta_observaciones_guia = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('5. PLANTA TURÍSTICA/COMPLEMENTARIOS',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 35.0,
              color: HexColor("#A65005"),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 35.0,
                color: HexColor("#A65005"),
              ),
              onPressed: () async {
                _sendData(context);
                //guardarPreferencias();
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            new Column(
              children: <Widget>[
                _crearComboBox("Planta Turística"),
                _crearComboBox1("Alojamiento"),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_estableci_registrados,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Establecimientos Registados",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_numero_mesas,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Número de Mesas",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_numero_plazas,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Número de Plazas",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: planta_observaciones,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                _crearComboBox2("Alimentos y bebidas"),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_estableci_registrados_alimentos,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Establecimientos Registrados",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_numero_mesas_alimentos,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Número de mesas",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_numero_plazas_alimentos,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Número de Plazas",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: planta_observaciones_alimentos,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                _crearComboBox3("Agencias de Viaje"),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_estableci_registrados_agencias,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Establecimientos Registrados",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: planta_observaciones_agencias,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                      child: Text(
                        "GUÍA",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_local,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Local",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_nacional,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Nacional",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_nacional_especializado,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Nacional Especializado",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_cultura,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Cultura",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: planta_aventura,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Aventura",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: planta_observaciones_guia,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Observaciones",
                        ),
                      )
                    ],
                  ),
                ),
                new RaisedButton(
                  child: Text(
                      "Enviar"
                  ),
                  onPressed: () {
                    _sendDB();
                  },
                ),
              ],
            )
          ],
        ),
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

  void _sendData(BuildContext context) {

    String estableci_registrados = planta_estableci_registrados.text;
    String numero_mesas = planta_numero_mesas.text;
    String numero_plazas = planta_numero_plazas.text;
    String observacionesTab5 = planta_observaciones.text;
    String estableci_registrados_alimentos =
        planta_estableci_registrados_alimentos.text;
    String numero_mesas_alimentos = planta_numero_mesas_alimentos.text;
    String numero_plazas_alimentos = planta_numero_plazas_alimentos.text;
    String observaciones_alimentos = planta_observaciones_alimentos.text;
    String estableci_registrados_agencias =
        planta_estableci_registrados_agencias.text;
    String observaciones_agencias = planta_observaciones_agencias.text;
    String local = planta_local.text;
    String nacional = planta_nacional.text;
    String nacional_especializado = planta_nacional_especializado.text;
    String cultura = planta_cultura.text;
    String aventura = planta_aventura.text;
    String observaciones_guia = planta_observaciones_guia.text;

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TableTurism6(
      especificar: widget.especificar,
      precipitacion: widget.precipitacion,
      precio: widget.precio,
      observaciones: widget.observaciones,
      transversal: widget.transversal,
      longitud: widget.longitud,
      altura: widget.altura,
      temperatura: widget.temperatura,
      meses_recomen: widget.meses_recomen,
      num_lugar: widget.num_lugar,
      calle_prin: widget.calle_prin,
      latitud: widget.latitud,
      distancia: widget.distancia,
      especifique_servicio: widget.especifique_servicio,
      puerto: widget.puerto,
      observaciones_servicio: widget.observaciones_servicio,
      coor_inicio: widget.coor_inicio,
      tipo_material: widget.tipo_material,
      tiempo_auto: widget.tiempo_auto,
      coor_fin: widget.coor_fin,
      observaciones_terrestre: widget.observaciones_terrestre,
      observaciones_accs: widget.observaciones_accs,
      estado: widget.estado,
      ciudad_cercana: widget.ciudad_cercana,
      distancia_ciudad: widget.distancia_ciudad,
      observaciones_acuatico: widget.observaciones_acuatico,
      observaciones_aereo: widget.observaciones_aereo,
      latitudTab4: widget.latitudTab4,
      longitudTab4: widget.longitudTab4,
      subtipo: widget.subtipo,
      tipo: widget.tipo,
      categoria: widget.categoria,
      numero_mesas_alimentos: numero_mesas_alimentos,
      observaciones_agencias: observaciones_agencias,
      estableci_registrados_agencias: estableci_registrados_agencias,
      estableci_registrados_alimentos: estableci_registrados_alimentos,
      numero_mesas: numero_mesas,
      aventura: aventura,
      estableci_registrados: estableci_registrados,
      observaciones_guia: observaciones_guia,
      observacionesTab5: observacionesTab5,
      cultura: cultura,
      local: local,
      numero_plazas: numero_plazas,
      nacional_especializado: nacional_especializado,
      observaciones_alimentos: observaciones_alimentos,
      numero_plazas_alimentos: numero_plazas_alimentos,
      nacional: nacional,
      seleccion2: widget.seleccion2,
      seleccion1: widget.seleccion1,
      seleccion: widget.seleccion,
      seleccion3: widget.seleccion3,
    )));
  }

  void _sendDB() {
    String estableci_registrados = planta_estableci_registrados.text;
    String numero_mesas = planta_numero_mesas.text;
    String numero_plazas = planta_numero_plazas.text;
    String observacionesTab5 = planta_observaciones.text;
    String estableci_registrados_alimentos =
        planta_estableci_registrados_alimentos.text;
    String numero_mesas_alimentos = planta_numero_mesas_alimentos.text;
    String numero_plazas_alimentos = planta_numero_plazas_alimentos.text;
    String observaciones_alimentos = planta_observaciones_alimentos.text;
    String estableci_registrados_agencias =
        planta_estableci_registrados_agencias.text;
    String observaciones_agencias = planta_observaciones_agencias.text;
    String local = planta_local.text;
    String nacional = planta_nacional.text;
    String nacional_especializado = planta_nacional_especializado.text;
    String cultura = planta_cultura.text;
    String aventura = planta_aventura.text;
    String observaciones_guia = planta_observaciones_guia.text;
    FirebaseFirestore.instance.collection("viewTuristas").add({
      'especificar': widget.especificar,
      'precipitacion': widget.precipitacion,
      'precio': widget.precio,
      'observaciones': widget.observaciones,
      'transversal': widget.transversal,
      'longitud': widget.longitud,
      'altura': widget.altura,
      'temperatura': widget.temperatura,
      'meses_recomen': widget.meses_recomen,
      'num_lugar': widget.num_lugar,
      'calle_prin': widget.calle_prin,
      'latitud': widget.latitud,
      'distancia': widget.distancia,
      'especifique_servicio': widget.especifique_servicio,
      'puerto': widget.puerto,
      'observaciones_servicio': widget.observaciones_servicio,
      'coor_inicio': widget.coor_inicio,
      'tipo_material': widget.tipo_material,
      'tiempo_auto': widget.tiempo_auto,
      'coor_fin': widget.coor_fin,
      'observaciones_terrestre': widget.observaciones_terrestre,
      'observaciones_accs': widget.observaciones_accs,
      'estado': widget.estado,
      'ciudad_cercana': widget.ciudad_cercana,
      'distancia_ciudad': widget.distancia_ciudad,
      'observaciones_acuatico': widget.observaciones_acuatico,
      'observaciones_aereo': widget.observaciones_aereo,
      'latitudTab4': widget.latitudTab4,
      'longitudTab4': widget.longitudTab4,
      'subtipo': widget.subtipo,
      'tipo': widget.tipo,
      'categoria': widget.categoria,
      'numero_mesas_alimentos': numero_mesas_alimentos,
      'observaciones_agencias': observaciones_agencias,
      'estableci_registrados_agencias': estableci_registrados_agencias,
      'estableci_registrados_alimentos': estableci_registrados_alimentos,
      'numero_mesas': numero_mesas,
      'aventura': aventura,
      'estableci_registrados': estableci_registrados,
      'observaciones_guia': observaciones_guia,
      'observacionesTab5': observacionesTab5,
      'cultura': cultura,
      'local': local,
      'numero_plazas': numero_plazas,
      'nacional_especializado': nacional_especializado,
      'observaciones_alimentos': observaciones_alimentos,
      'numero_plazas_alimentos': numero_plazas_alimentos,
      'nacional': nacional,
    });
  }
}
