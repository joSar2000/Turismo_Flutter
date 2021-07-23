import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo_flutter/pages/viewturista_table5.dart';

class TableTurism4 extends StatefulWidget {

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
  //Tabla3

  TableTurism4({Key? key,
    required this.categoria,
    required this.tipo,
    required this.subtipo,
    required this.calle_prin,
    required this.num_lugar,
    required this.transversal,
    required this.latitud,
    required this.longitud,
    required this.altura,
    required this.seleccion,
    required this.seleccion1,
    required this.seleccion2,
    required this.seleccion3,
    required this.temperatura,
    required this.precipitacion,
    required this.especificar,
    required this.precio,
    required this.meses_recomen,
    required this.observaciones,
    required this.seleccionTab3,
    required this.seleccion1Tab3,
    required this.seleccion2Tab3,
    required this.seleccion3Tab3,
    required this.seleccion4Tab3,
    required this.seleccion5Tab3,
    required this.seleccion6Tab3,

  }): super(key: key);

  @override
  State<StatefulWidget> createState() => new FormWidgetState4();
}

class FormWidgetState4 extends State<TableTurism4> {

  final _formkey = GlobalKey<FormState>();
  String seleccionTab4 = "Primer Orden";
  String seleccion1Tab4 = "Maritimo";
  String seleccion2Tab4 = "Nacional";
  String seleccion3Tab4 = "Bus";
  double ponderacionTab4 = 0;
  TextEditingController accs_ciudad_cercana = TextEditingController();
  TextEditingController accs_distancia_ciudad = TextEditingController();
  TextEditingController accs_tiempo_auto = TextEditingController();
  TextEditingController accs_latitud = TextEditingController();
  TextEditingController accs_longitud = TextEditingController();
  TextEditingController accs_obser = TextEditingController();
  TextEditingController accs_coor_inicio = TextEditingController();
  TextEditingController accs_coor_fin = TextEditingController();
  TextEditingController accs_distancia = TextEditingController();
  TextEditingController accs_tipo_material = TextEditingController();
  TextEditingController accs_estado = TextEditingController();
  TextEditingController accs_obs_terrestre = TextEditingController();
  TextEditingController accs_puerto = TextEditingController();
  TextEditingController accs_obs_acuatico = TextEditingController();
  TextEditingController accs_obs_aereo = TextEditingController();
  TextEditingController accs_especifique_servicio = TextEditingController();
  TextEditingController accs_obs_servicio = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  _increment() {
    setState(() {
      ponderacionTab4 ++;
    });
  }

  _decrement() {
    setState(() {
      ponderacionTab4 --;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('4. ACCESIBILIDAD Y CONECTIVIDAD AL ATRACTIVO',
              textAlign: TextAlign.center,
              maxLines: 5,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: HexColor("#A65005"),
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded,
              size: 35.0,
              color: HexColor("#A65005"),),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget> [
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded,
                size: 35.0,
                color: HexColor("#A65005"),),
              onPressed: () async {
                _sendData(context);
                //guardarPreferencias();
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget> [
            new Column(
              children: <Widget> [
                new Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextFormField(
                        controller: accs_ciudad_cercana,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Nombre de la ciudad más cercana",
                        ),
                      ),
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_distancia_ciudad,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Distancia desde la ciudad",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_tiempo_auto,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Tiempo en auto al atractivo",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_latitud,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Latitud",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_longitud,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Longitud",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_obser,
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
                      child: Text("VÍAS DE ACCESO",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),
                      )),
                ),
                new Center(
                    child: Text("Terrestre (M)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        color: HexColor("#364C59"),
                      ),
                    )),
                _crearComboBox("Tipo de Via"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_coor_inicio,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Coordenada de Inicio",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_coor_fin,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Coordenada de Fin",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: accs_distancia,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Distancia (KM)",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_tipo_material,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Tipo de Material",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_estado,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Estado",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_obs_terrestre,
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
                      child: Text("Acuático (U)",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),)),
                ),
                _crearComboBox1("Tipo de Via"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_puerto,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique Puerto/Muelle de Partida",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_obs_acuatico,
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
                      child: Text("Aéreo (U)",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),)),
                ),
                _crearComboBox2("Tipo de Vuelo"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_obs_aereo,
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
                      child: Text("SERVICIO DE TRANSPORTE",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: HexColor("#364C59"),
                        ),)),
                ),
                _crearComboBox3("Servicios"),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_especifique_servicio,
                        maxLines: 3,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input),
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: "Especifique",
                        ),
                      )
                    ],
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: accs_obs_servicio,
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
            texto,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DropdownButton(
          value: seleccionTab4,
          onChanged: (value) {
            setState(() {
              seleccionTab4 = value.toString();
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
          value: seleccion1Tab4,
          onChanged: (value) {
            setState(() {
              seleccion1Tab4 = value.toString();
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
          value: seleccion2Tab4,
          onChanged: (value) {
            setState(() {
              seleccion2Tab4 = value.toString();
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
          value: seleccion3Tab4,
          onChanged: (value) {
            setState(() {
              seleccion3Tab4 = value.toString();
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

  void _sendData(BuildContext context) {

    String ciudad_cercana = accs_ciudad_cercana.text;
    String distancia_ciudad = accs_distancia_ciudad.text;
    String tiempo_auto = accs_tiempo_auto.text;
    String latitudTab4 = accs_latitud.text;
    //double latitudTab4D = latitudTab4 as double;
    String longitudTab4 = accs_longitud.text;
    //double longitudTab4D = longitudTab4 as double;
    String observaciones_accs = accs_obser.text;
    String coor_inicio = accs_coor_inicio.text;
    //double coor_inicioD = coor_inicio as double;
    String coor_fin = accs_coor_fin.text;
    //double coor_finD = coor_fin as double;
    String distancia = accs_distancia.text;
    String tipo_material = accs_tipo_material.text;
    String estado = accs_estado.text;
    String observaciones_terrestre = accs_obs_terrestre.text;
    String puerto = accs_puerto.text;
    String observaciones_acuatico = accs_obs_acuatico.text;
    String observaciones_aereo = accs_obs_aereo.text;
    String especifique_servicio = accs_especifique_servicio.text;
    String observaciones_servicio = accs_obs_servicio.text;

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TableTurism5(
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
          distancia: distancia,
          especifique_servicio: especifique_servicio,
          puerto: puerto,
          observaciones_servicio: observaciones_servicio,
          coor_inicio: coor_inicio,
          tipo_material: tipo_material,
          tiempo_auto: tiempo_auto,
          coor_fin: coor_fin,
          observaciones_terrestre: observaciones_terrestre,
          observaciones_accs: observaciones_accs,
          estado: estado,
          ciudad_cercana: ciudad_cercana,
          distancia_ciudad: distancia_ciudad,
          observaciones_acuatico: observaciones_acuatico,
          observaciones_aereo: observaciones_aereo,
          latitudTab4: latitudTab4,
          longitudTab4: longitudTab4,
          subtipo: widget.subtipo,
          tipo: widget.tipo,
          categoria: widget.categoria,
          seleccion1: widget.seleccion1,
          seleccionTab4: seleccionTab4,
          seleccion3: widget.seleccion3,
          seleccion2: widget.seleccion2,
          seleccion4Tab3: widget.seleccion4Tab3,
          seleccion3Tab4: seleccion3Tab4,
          seleccion: widget.seleccion,
          seleccion3Tab3: widget.seleccion3Tab3,
          seleccion6Tab3: widget.seleccion6Tab3,
          seleccionTab3: widget.seleccionTab3,
          seleccion1Tab3: widget.seleccion1Tab3,
          seleccion2Tab4: seleccion2Tab4,
          seleccion5Tab3: widget.seleccion5Tab3,
          seleccion2Tab3: widget.seleccion2Tab3,
          seleccion1Tab4: seleccion1Tab4,
        ))
    );
  }
}