import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TableTurism6 extends StatefulWidget {

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
  final String seleccion;
  final String seleccion1;
  final String seleccion2;
  final String seleccion3;
  //Tabla3
  final String temperatura;
  final String precipitacion;
  final String especificar;
  final String precio;
  final String meses_recomen;
  final String observaciones;
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
  //Tabla5
  final String estableci_registrados;
  final String numero_mesas;
  final String numero_plazas;
  final String observacionesTab5 ;
  final String estableci_registrados_alimentos;
  final String numero_mesas_alimentos ;
  final String numero_plazas_alimentos ;
  final String observaciones_alimentos;
  final String estableci_registrados_agencias;
  final String observaciones_agencias ;
  final String local;
  final String nacional ;
  final String nacional_especializado;
  final String cultura ;
  final String aventura ;
  final String observaciones_guia;

  TableTurism6({Key? key,
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
    required this.estableci_registrados,
    required this.numero_mesas,
    required this.numero_plazas,
    required this.observacionesTab5,
    required this.estableci_registrados_alimentos,
    required this.numero_mesas_alimentos,
    required this.numero_plazas_alimentos,
    required this.observaciones_alimentos,
    required this.estableci_registrados_agencias,
    required this.observaciones_agencias,
    required this.local,
    required this.nacional,
    required this.nacional_especializado,
    required this.cultura,
    required this.aventura,
    required this.observaciones_guia,
    required this.seleccion,
    required this.seleccion1,
    required this.seleccion2,
    required this.seleccion3

  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => new FormWidgetState6();
}

class FormWidgetState6 extends State<TableTurism6>{
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
    currentDate.toString();
  }

  //VARIABLES
  final _formkey = GlobalKey<FormState>();
  TextEditingController obs = TextEditingController();
  TextEditingController obsOtro_M_fac = TextEditingController();
  TextEditingController obs_M_fac = TextEditingController();
  TextEditingController obsEntorno = TextEditingController();
  TextEditingController obsOtro_M_ent = TextEditingController();
  TextEditingController obs_M_ent = TextEditingController();
  TextEditingController obsDeclarante = TextEditingController();
  TextEditingController obsDenominacion = TextEditingController();
  TextEditingController obsAlcance = TextEditingController();
  TextEditingController obsDeclaratoria = TextEditingController();
  late DateTime _dateTime;
  int optionGroup = 0;
  late int selectedOption;
  double ponderacion = 14;

  void initState() {
    super.initState();
    optionGroup = 0;
    selectedOption = 0;
    ponderacion = 14;
  }

  setSelectedRadio (int val) {
    setState(() {
      optionGroup = val;
      if (optionGroup == 1) {
        this.si_estado_conservacion = true;
        this.no_estado_conservacion = false;
        this.s_i_estado_conservacion = false;
        if (this.si_estado_conservacion == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup == 2) {
        this.si_estado_conservacion = false;
        this.no_estado_conservacion = true;
        this.s_i_estado_conservacion = false;
        if (this.no_estado_conservacion == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup == 3) {
        this.si_estado_conservacion = false;
        this.no_estado_conservacion = false;
        this.s_i_estado_conservacion = true;
      }
    });
  }

  bool si_estado_conservacion = false;
  bool no_estado_conservacion = false;
  bool s_i_estado_conservacion = false;
  bool atractivo_U = false;
  bool conservado_atractivo_U = false;
  bool alterado_atractivo_U = false;
  bool deterioro_atractivo_U = false;
  bool deteriorado_atractivo_U = false;
  //String observaciones_atractivo_U = "";
  bool erosion_M_fac = false;
  bool humedad_M_fac = false;
  bool desastres_naturales_M_fac = false;
  bool flora_fauna_M_fac = false;
  bool clima_M_fac = false;
  bool actividades_agricolas_M_fac = false;
  bool actividades_forestales_M_fac = false;
  bool actividades_minera_M_fac = false;
  bool actividades_industriales_M_fac = false;
  bool neglicencia_M_fac = false;
  bool huaqueria_M_fac = false;
  bool conflictos_tenencia_M_fac = false;
  bool condiciones_uso_M_fac = false;
  bool falta_mantenimiento_M_fac = false;
  bool contaminacion_ambiente_M_fac = false;
  bool generacion_residuos_M_fac = false;
  bool expansion_urbana_M_fac = false;
  bool conflicto_poliico_social_M_fac = false;
  bool desarrollo_industrial_M_fac = false;
  bool vandalismo_M_fac = false;
  bool otro_M_fac = false;
  //
  bool entorno_U = false;
  bool conservado_entorno_U = false;
  bool alterado_entorno_U = false;
  bool deterioro_entorno_U = false;
  bool deteriorado_entorno_U = false;
  bool erosion_M_ent = false;
  bool humedad_M_ent = false;
  bool desastres_naturales_M_ent = false;
  bool flora_fauna_M_ent = false;
  bool clima_M_ent = false;
  bool actividades_agricolas_M_ent = false;
  bool actividades_forestales_M_ent = false;
  bool actividades_minera_M_ent = false;
  bool actividades_industriales_M_ent = false;
  bool neglicencia_M_ent = false;
  bool huaqueria_M_ent = false;
  bool conflictos_tenencia_M_ent = false;
  bool condiciones_uso_M_ent = false;
  bool falta_mantenimiento_M_ent = false;
  bool contaminacion_ambiente_M_ent = false;
  bool generacion_residuos_M_ent = false;
  bool expansion_urbana_M_ent = false;
  bool conflicto_poliico_social_M_ent = false;
  bool desarrollo_industrial_M_ent = false;
  bool vandalismo_M_ent = false;
  bool otro_M_ent = false;
  //
  bool declaratoria_espacio = false;
  final fecha_declaracion_espacio = new DateTime.now();
  //Ponderacion


  void _showAlertDialogNo(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe navegar hasta la siguiente pantalla con el botón de la parte inferior',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }
  void _showAlertDialogSi(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar esta pantalla con la información correspondiente',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }
  void _showAlertDialogObservaciones(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar este apartado con sus especificaciones',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }
  void _showAlertDialogDeclaratoria(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar este apartado con la información correspondiente',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        )
    );
  }

  getPonderacionTable6() {
    int resultado = 0;
    if (this.conservado_atractivo_U == true && this.alterado_atractivo_U == true) {
      ponderacion = 0.18 * 2;
      resultado = ponderacion as int;
    }
    return resultado;
  }

  _increment() {
    setState(() {
      ponderacion ++;
    });
  }

  _decrement() {
    setState(() {
      ponderacion --;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          title:
          Text('6. ESTADO DE CONSERVACIÓN E INTEGRACIÓN A ATRACTIVO/ENTORNO',
              textAlign: TextAlign.center,
              maxLines: 6,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: HexColor("#A65005"),
              )),
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
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
              onPressed: () {
                _sendData(context);
              },
            ),
          ],

        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[

            new Text("ATRACTIVO (U)",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: HexColor("#364C59"),
                )),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      child:RadioListTile(
                        value: 1,
                        groupValue: optionGroup,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroup,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: RadioListTile(
                        value: 3,
                        groupValue: optionGroup,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadio(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      ),
                    ),
                  ),
                ]),
            new Container(
              child: CheckboxListTile(
                secondary: const Icon(Icons.fact_check_sharp),
                title: Text(
                  "ATRACTIVO (U)",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: HexColor("#364C59"),
                  ),
                ),
                subtitle: Text(
                  "Marque en caso de ser necesario",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: HexColor("#99AD8F"),
                  ),
                ),
                value: this.atractivo_U,
                onChanged: (value) {
                  setState(() {
                    this.atractivo_U = value!;
                  });
                },
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Conservado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conservado_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.conservado_atractivo_U = value!;
                      });
                      //print(ponderacion);
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Alterado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.alterado_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.alterado_atractivo_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "En proceso de deterioro",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deterioro_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.deterioro_atractivo_U = value!;
                        if (this.deterioro_atractivo_U) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Deteriorado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deteriorado_atractivo_U,
                    onChanged: (value) {
                      setState(() {
                        this.deteriorado_atractivo_U = value!;
                        if (this.deteriorado_atractivo_U) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            new Form(
              key: _formkey,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  enabled: this.si_estado_conservacion,
                  controller: obs,
                  maxLines: 3,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "correcto";
                    } else {
                      return "ingrese valores!";
                    }
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    color: HexColor("#0D0D0D"),
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.input_outlined),
                    contentPadding: EdgeInsets.all(20.0),
                    hintText:
                    "Ingrese sus observaciones en caso de ser necesarias",
                    labelText: ("Observaciones"),
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(10, 10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
            new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "FACTORES DE ALTERACIÓN Y DETERIORO (U)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "NATURALES (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Erosión",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.erosion_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.erosion_M_fac = value!;
                        if (this.erosion_M_fac) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Humedad",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.humedad_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.humedad_M_fac = value!;
                        if (this.humedad_M_fac) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desastres Naturales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desastres_naturales_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.desastres_naturales_M_fac = value!;
                        if (this.desastres_naturales_M_fac) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Flora/Fauna",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.flora_fauna_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.flora_fauna_M_fac = value!;
                        if (this.flora_fauna_M_fac) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Clima",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.clima_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.clima_M_fac = value!;
                        if (this.clima_M_fac) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "ANTRÓPICOS/ANTROPOGÉNICOS (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades agrícolas y ganaderas",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_agricolas_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_agricolas_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades forestales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_forestales_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_forestales_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades extractivas/minería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_minera_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_minera_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades industriales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_industriales_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_industriales_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Negligencia/abandono",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.neglicencia_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.neglicencia_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Huaquería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.huaqueria_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.huaqueria_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto de tenencia",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflictos_tenencia_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.conflictos_tenencia_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Condiciones de uso y exposición",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.condiciones_uso_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.condiciones_uso_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Falta de mantenimiento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.falta_mantenimiento_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.falta_mantenimiento_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Contaminación del ambiente",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.contaminacion_ambiente_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.contaminacion_ambiente_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Generación de residuos",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.generacion_residuos_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.generacion_residuos_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Expansión urbana",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.expansion_urbana_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.expansion_urbana_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto político/social",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflicto_poliico_social_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.conflicto_poliico_social_M_fac = value!;
                      });
                      new Container(
                        child: CheckboxListTile(
                          secondary: Icon(Icons.fact_check),
                          title: Text(
                            "Falta de mantenimiento",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: HexColor("#364C59"),
                            ),
                          ),
                          subtitle: Text(
                            "Marque en caso de ser necesario",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: HexColor("#99AD8F"),
                            ),
                          ),
                          value: this.neglicencia_M_fac,
                          onChanged: (value) {
                            setState(() {
                              this.neglicencia_M_fac = value!;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desarrollo industrial/comercial",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desarrollo_industrial_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.desarrollo_industrial_M_fac = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Vandalismo",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.vandalismo_M_fac,
                    onChanged: (value) {
                      setState(() {
                        this.vandalismo_M_fac = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.otro_M_fac,
                      onChanged: (value) {
                        setState(() {
                          this.otro_M_fac = value!;
                          if (this.otro_M_fac == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.otro_M_fac,
                          controller: obsOtro_M_fac,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese sus especificaciones",
                            labelText: ("Especificaciones"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            new Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      enabled: this.si_estado_conservacion,
                      controller: obs_M_fac,
                      maxLines: 3,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "correcto";
                        } else {
                          return "ingrese valores!";
                        }
                      },
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.input_outlined),
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus observaciones en caso de ser necesarias",
                        labelText: ("Observaciones"),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                )),
            new Container(
              padding: EdgeInsets.all(20.0),
              child: Text("ENTORNO (U)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: HexColor("#364C59"),
                  )),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "ENTORNO (U)",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Conservado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conservado_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.conservado_entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Alterado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.alterado_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.alterado_entorno_U = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "En proceso de deterioro",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deterioro_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.deterioro_entorno_U = value!;
                        if (this.deteriorado_entorno_U) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: const Icon(Icons.fact_check_sharp),
                    title: Text(
                      "Deteriorado",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.deteriorado_entorno_U,
                    onChanged: (value) {
                      setState(() {
                        this.deteriorado_entorno_U = value!;
                        if (this.deteriorado_entorno_U) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "FACTORES DE ALTERACIÓN Y DETERIORO (U)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "NATURALES (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Erosión",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.erosion_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.erosion_M_ent = value!;
                        if (this.erosion_M_ent) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Humedad",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.humedad_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.humedad_M_ent = value!;
                        if (this.humedad_M_ent) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desastres Naturales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desastres_naturales_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.desastres_naturales_M_ent = value!;
                        if (this.desastres_naturales_M_ent) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Flora/Fauna",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.flora_fauna_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.flora_fauna_M_ent = value!;
                        if (this.flora_fauna_M_ent) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Clima",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.clima_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.clima_M_ent = value!;
                        if (this.clima_M_ent) {
                          _decrement();
                        } else {
                          _increment();
                        }
                      });
                    },
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "ANTRÓPICOS/ANTROPOGÉNICOS (M)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: HexColor("#364C59"),
                    ),
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades agrícolas y ganaderas",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_agricolas_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_agricolas_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades forestales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_forestales_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_forestales_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades extractivas/minería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_minera_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_minera_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Actividades industriales",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.actividades_industriales_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.actividades_industriales_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Negligencia/abandono",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.neglicencia_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.neglicencia_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Huaquería",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.huaqueria_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.huaqueria_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto de tenencia",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflictos_tenencia_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.conflictos_tenencia_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Condiciones de uso y exposición",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.condiciones_uso_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.condiciones_uso_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Falta de mantenimiento",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.falta_mantenimiento_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.falta_mantenimiento_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Contaminación del ambiente",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.contaminacion_ambiente_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.contaminacion_ambiente_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Generación de residuos",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.generacion_residuos_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.generacion_residuos_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Expansión urbana",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.expansion_urbana_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.expansion_urbana_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Conflicto político/social",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.conflicto_poliico_social_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.conflicto_poliico_social_M_ent = value!;
                      });
                      new Container(
                        child: CheckboxListTile(
                          secondary: Icon(Icons.fact_check),
                          title: Text(
                            "Falta de mantenimiento",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: HexColor("#364C59"),
                            ),
                          ),
                          subtitle: Text(
                            "Marque en caso de ser necesario",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: HexColor("#99AD8F"),
                            ),
                          ),
                          value: this.neglicencia_M_ent,
                          onChanged: (value) {
                            setState(() {
                              this.neglicencia_M_ent = value!;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Desarrollo industrial/comercial",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.desarrollo_industrial_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.desarrollo_industrial_M_ent = value!;
                      });
                    },
                  ),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "Vandalismo",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.vandalismo_M_ent,
                    onChanged: (value) {
                      setState(() {
                        this.vandalismo_M_ent = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: CheckboxListTile(
                      title: Text(
                        "Otro",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        ),
                      ),
                      value: this.otro_M_ent,
                      onChanged: (value) {
                        setState(() {
                          this.otro_M_ent = value!;
                          if (this.otro_M_ent == true) {
                            _showAlertDialogObservaciones(context);
                          }
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          enabled: this.otro_M_ent,
                          controller: obsOtro_M_ent,
                          maxLines: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "correcto";
                            } else {
                              return "ingrese valores!";
                            }
                          },
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor("#0D0D0D"),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            hintText: "Ingrese sus especificaciones",
                            labelText: ("Especificaciones"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            new Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: obs_M_ent,
                      maxLines: 3,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "correcto";
                        } else {
                          return "ingrese valores!";
                        }
                      },
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.input_outlined),
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus observaciones en caso de ser necesarias",
                        labelText: ("Observaciones"),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                )),
            new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      "DECLARATORIA DEL ESPACIO TURÍSTICO ASOCIADO AL ATRACTIVO",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: HexColor("#364C59"),
                      )),
                ),
                new Container(
                  child: CheckboxListTile(
                    secondary: Icon(Icons.fact_check),
                    title: Text(
                      "DECLARATORIA",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: HexColor("#364C59"),
                      ),
                    ),
                    subtitle: Text(
                      "Marque en caso de ser necesario",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: HexColor("#99AD8F"),
                      ),
                    ),
                    value: this.declaratoria_espacio,
                    onChanged: (value) {
                      setState(() {
                        this.declaratoria_espacio = value!;
                        if (this.declaratoria_espacio == true) {
                          _showAlertDialogDeclaratoria(context);
                        }
                      });
                    },
                  ),
                ),
                new Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio && this.si_estado_conservacion,
                        controller: obsDeclarante,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: "Ingrese su información",
                          labelText: ("Declarante"),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio && this.si_estado_conservacion,
                        controller: obsDenominacion,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: "Ingrese su información",
                          labelText: ("Denominación"),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio && this.si_estado_conservacion,
                        controller: obsAlcance,
                        maxLines: 3,
                        validator: (obsAlcance) {
                          if (obsAlcance!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: "Ingrese su información",
                          labelText: ("Alcance"),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        enabled: this.declaratoria_espacio && this.si_estado_conservacion,
                        controller: obsDeclaratoria,
                        maxLines: 3,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "correcto";
                          } else {
                            return "ingrese valores!";
                          }
                        },
                        style: TextStyle(
                          fontSize: 20.0,
                          color: HexColor("#0D0D0D"),
                        ),
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          hintText:
                          "Ingrese sus observaciones en caso de ser necesarias",
                          labelText: ("Observaciones"),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      TextFormField(
                        maxLines: 3,
                        enabled: false,
                        decoration: InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          contentPadding: EdgeInsets.all(20.0),
                          //hintText: currentDate.toString(),
                          labelText: ("[DD-MM-AAAA]\n[" +
                              currentDate.day.toString() + " - " + currentDate.month.toString() + " - " + currentDate.year.toString() +
                              "]"),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10))),
                        ),
                      ),
                      //Text(currentDate.toString()),
                      new Container(
                        padding: EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                          elevation: 20.0,
                          child: Icon(Icons.calendar_today),
                          onPressed: () => _selectDate(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  void _sendData(BuildContext context) {
    String observaciones_atractivo_U = obs.text;
    String especifique_M_fac = obsOtro_M_fac.text;
    String observaciones_M_fac = obs_M_fac.text;
    String observaciones_entorno_U = obsEntorno.text;
    String especifique_M_ent = obsOtro_M_ent.text;
    String observaciones_M_ent = obs_M_ent.text;
    String declarante_espacio = obsDeclarante.text;
    String denominacion_espacio = obsDenominacion.text;
    String alcance_espacio = obsAlcance.text;
    String observaciones_espacio = obsDeclaratoria.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FormSaveWidget(
                si_estado_conservacion: si_estado_conservacion,
                observaciones_atractivo_U: observaciones_atractivo_U,
                atractivo_U: atractivo_U,
                no_estado_conservacion: no_estado_conservacion,
                s_i_estado_conservacion: s_i_estado_conservacion,
                conservado_atractivo_U: conservado_atractivo_U,
                alterado_atractivo_U: alterado_atractivo_U,
                deterioro_atractivo_U: deterioro_atractivo_U,
                deteriorado_atractivo_U: deteriorado_atractivo_U,
                erosion_M_fac: erosion_M_fac,
                humedad_M_fac: humedad_M_fac,
                desastres_naturales_M_fac: desastres_naturales_M_fac,
                flora_fauna_M_fac: flora_fauna_M_fac,
                clima_M_fac: clima_M_fac,
                actividades_agricolas_M_fac: actividades_agricolas_M_fac,
                actividades_forestales_M_fac: actividades_forestales_M_fac,
                actividades_minera_M_fac: actividades_minera_M_fac,
                actividades_industriales_M_fac: actividades_industriales_M_fac,
                neglicencia_M_fac: neglicencia_M_fac,
                huaqueria_M_fac: huaqueria_M_fac,
                conflictos_tenencia_M_fac: conflictos_tenencia_M_fac,
                condiciones_uso_M_fac: condiciones_uso_M_fac,
                falta_mantenimiento_M_fac: falta_mantenimiento_M_fac,
                contaminacion_ambiente_M_fac: contaminacion_ambiente_M_fac,
                generacion_residuos_M_fac: generacion_residuos_M_fac,
                expansion_urbana_M_fac: expansion_urbana_M_fac,
                conflicto_poliico_social_M_fac: conflicto_poliico_social_M_fac,
                desarrollo_industrial_M_fac: desarrollo_industrial_M_fac,
                vandalismo_M_fac: vandalismo_M_fac,
                otro_M_fac: otro_M_fac,
                especifique_M_fac: especifique_M_fac,
                observaciones_M_fac: observaciones_M_fac,
                entorno_U: entorno_U,
                conservado_entorno_U: conservado_entorno_U,
                alterado_entorno_U: alterado_entorno_U,
                deterioro_entorno_U: deterioro_entorno_U,
                deteriorado_entorno_U: deteriorado_entorno_U,
                observaciones_entorno_U: observaciones_entorno_U,
                erosion_M_ent: erosion_M_ent,
                humedad_M_ent: humedad_M_ent,
                desastres_naturales_M_ent: desastres_naturales_M_ent,
                flora_fauna_M_ent: flora_fauna_M_ent,
                clima_M_ent: clima_M_ent,
                actividades_agricolas_M_ent: actividades_agricolas_M_ent,
                actividades_forestales_M_ent: actividades_forestales_M_ent,
                actividades_minera_M_ent: actividades_minera_M_ent,
                actividades_industriales_M_ent: actividades_industriales_M_ent,
                neglicencia_M_ent: neglicencia_M_ent,
                huaqueria_M_ent: huaqueria_M_ent,
                conflictos_tenencia_M_ent: conflictos_tenencia_M_ent,
                condiciones_uso_M_ent: condiciones_uso_M_ent,
                falta_mantenimiento_M_ent: falta_mantenimiento_M_ent,
                contaminacion_ambiente_M_ent: contaminacion_ambiente_M_ent,
                generacion_residuos_M_ent: generacion_residuos_M_ent,
                expansion_urbana_M_ent: expansion_urbana_M_ent,
                conflicto_poliico_social_M_ent: conflicto_poliico_social_M_ent,
                desarrollo_industrial_M_ent: desarrollo_industrial_M_ent,
                vandalismo_M_ent: vandalismo_M_ent,
                otro_M_ent: otro_M_ent,
                especifique_M_ent: especifique_M_ent,
                observaciones_M_ent: observaciones_M_ent,
                declaratoria_espacio: declaratoria_espacio,
                declarante_espacio: declarante_espacio,
                denominacion_espacio: denominacion_espacio,
                fecha_declaracion_espacio: fecha_declaracion_espacio,
                alcance_espacio: alcance_espacio,
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
              numero_mesas_alimentos: widget.numero_mesas_alimentos,
              observaciones_agencias: widget.observaciones_agencias,
              estableci_registrados_agencias: widget.estableci_registrados_agencias,
              estableci_registrados_alimentos: widget.estableci_registrados_alimentos,
              numero_mesas: widget.numero_mesas,
              aventura: widget.aventura,
              estableci_registrados: widget.estableci_registrados,
              observaciones_guia: widget.observaciones_guia,
              observacionesTab5: widget.observacionesTab5,
              cultura: widget.cultura,
              local: widget.local,
              numero_plazas: widget.numero_plazas,
              nacional_especializado: widget.nacional_especializado,
              observaciones_alimentos: widget.observaciones_alimentos,
              numero_plazas_alimentos: widget.numero_plazas_alimentos,
              nacional: widget.nacional,
              seleccion2: widget.seleccion2,
              seleccion1: widget.seleccion1,
              seleccion: widget.seleccion,
              seleccion3: widget.seleccion3,
              observaciones_espacio: observaciones_espacio,
            )
        ));
  }
}