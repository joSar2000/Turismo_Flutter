import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class TurismTable10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FormWidgetState10();
}

class FormWidgetState10 extends State<TurismTable10> {
  static TextEditingController obs_promocion_plan_especificacion =
      TextEditingController();
  static TextEditingController obs_direccion_medio_web =
      TextEditingController();
  static TextEditingController obs_direccion_medio_social =
      TextEditingController();
  static TextEditingController obs_direccion_medio_revista =
      TextEditingController();
  static TextEditingController obs_direccion_medio_pop =
      TextEditingController();
  static TextEditingController obs_direccion_medio_oficina =
      TextEditingController();
  static TextEditingController obs_direccion_medio_comunicacion =
      TextEditingController();
  static TextEditingController obs_direccion_medio_ferias =
      TextEditingController();
  static TextEditingController obs_direccion_medios_otro =
      TextEditingController();
  static TextEditingController obs_periodicidad_web = TextEditingController();
  static TextEditingController obs_periodicidad_social =
      TextEditingController();
  static TextEditingController obs_periodicidad_revista =
      TextEditingController();
  static TextEditingController obs_periodicidad_pop = TextEditingController();
  static TextEditingController obs_periodicidad_oficina =
      TextEditingController();
  static TextEditingController obs_periodicidad_comunicacion =
      TextEditingController();
  static TextEditingController obs_periodicidad_ferias =
      TextEditingController();
  static TextEditingController obs_periodicidad_otro = TextEditingController();
  static TextEditingController obs_medios_promocion_observaciones =
      TextEditingController();
  static TextEditingController obs_atractivo_oferta_especifique =
      TextEditingController();
  static TextEditingController obs_atractivo_oferta_observaciones =
      TextEditingController();

  //VARIABLES
  bool promocion_si = false;
  bool promocion_no = false;
  bool promocion_s_i = false;
  bool promocion_plan_si = false;
  bool promocion_plan_no = false;
  String promocion_plan_especificacion = obs_promocion_plan_especificacion.text;
  bool promocion_plan_include_si = false;
  bool promocion_plan_include_no = false;
  bool medio_web = false;
  bool medio_social = false;
  bool medio_revista = false;
  bool medio_pop = false;
  bool medio_oficina = false;
  bool medio_comunicacion = false;
  bool medio_ferias = false;
  bool medio_otro = false;
  String direccion_medio_web = obs_direccion_medio_web.text;
  String direccion_medio_social = obs_direccion_medio_social.text;
  String direccion_medio_revista = obs_direccion_medio_revista.text;
  String direccion_medio_pop = obs_direccion_medio_pop.text;
  String direccion_medio_oficina = obs_direccion_medio_oficina.text;
  String direccion_medio_comunicacion = obs_direccion_medio_comunicacion.text;
  String direccion_medio_ferias = obs_direccion_medio_ferias.text;
  String direccion_medios_otro = obs_direccion_medios_otro.text;
  String periodicidad_web = obs_periodicidad_web.text;
  String periodicidad_social = obs_periodicidad_social.text;
  String periodicidad_revista = obs_periodicidad_revista.text;
  String periodicidad_pop = obs_periodicidad_pop.text;
  String periodicidad_oficina = obs_periodicidad_oficina.text;
  String periodicidad_comunicacion = obs_periodicidad_comunicacion.text;
  String periodicidad_ferias = obs_periodicidad_ferias.text;
  String periodicidad_otro = obs_periodicidad_otro.text;
  String medios_promocion_observaciones =
      obs_medios_promocion_observaciones.text;
  String atractivo_oferta_especifique = obs_atractivo_oferta_especifique.text;
  String atractivo_oferta_observaciones =
      obs_atractivo_oferta_observaciones.text;
  bool atractivo_oferta_si = false;
  bool atractivo_oferta_no = false;

  String _chosenValue = "";

  int optionGroup = 0;
  int optionGroupSecond = 0;
  int optionGroupThird = 0;
  late int selectedOption;

  void initState() {
    super.initState();
    optionGroup = 0;
    selectedOption = 0;
    optionGroupSecond = 0;
    optionGroupThird = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      optionGroup = val;
      if (optionGroup == 1) {
        this.promocion_si = true;
        this.promocion_no = false;
        this.promocion_s_i = false;
        if (this.promocion_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroup == 2) {
        this.promocion_si = false;
        this.promocion_no = true;
        this.promocion_s_i = false;
        if (this.promocion_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroup == 3) {
        this.promocion_si = false;
        this.promocion_no = false;
        this.promocion_s_i = true;
      }
    });
  }
  setSelectedRadioSecond (int val) {
    setState(() {
      optionGroupSecond = val;
      if (optionGroupSecond == 1) {
        this.promocion_plan_si = true;
        this.promocion_plan_no = false;
      } else if (optionGroupSecond == 2) {
        this.promocion_plan_si = false;
        this.promocion_plan_no = true;
      }
    });
  }
  setSelectedRadioThird (int val) {
    setState(() {
      optionGroupThird = val;
      if (optionGroupThird == 1) {
        this.promocion_plan_include_si = true;
        this.promocion_plan_include_no = false;
      } else if (optionGroupThird == 2) {
        this.promocion_plan_include_si = false;
        this.promocion_plan_include_no = true;
      }
    });
  }

  void _showAlertDialogSi(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }
  void _showAlertDialogObservaciones(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }
  void _showAlertDialogNo(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'AVISO',
                textAlign: TextAlign.center,
              ),
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
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          //bottom navigation bar on scaffold
          color: HexColor("#364C59"),
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
              10, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  /*
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TableTurism8()));

                   */
                  print("luego");
                },
              ),
            ],
          ),
        ),
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('10. PROMOCIÓN Y COMERCIALIZACIÓN DEL ATRACTIVO',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#A65005"),
              )),
        ),
        body: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Container(
                      child: RadioListTile(
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
                ),
                Flexible(
                  child: Container(
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
                ),
                Flexible(
                  child: Container(
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
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: Text("10.1. Medios de Promoción del Atractivo (M)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: HexColor("#364C59"),
                  )),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "¿Existe un plan de promoción turística cantonal?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroupSecond,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadioSecond(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroupSecond,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadioSecond(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                )
              ],
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      enabled: this.promocion_si && this.promocion_plan_si,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: HexColor("#0D0D0D"),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        hintText:
                        "Ingrese sus especificaciones en caso de ser necesarias",
                        labelText: ("Especificaciones"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(10, 10))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "¿El atractivo se encuentra incluido en el plan de promoción turístico cantonal?",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#364C59"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 1,
                        groupValue: optionGroupThird,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadioThird(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 2,
                        groupValue: optionGroupThird,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadioThird(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                )
              ],
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Medio Promocional",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: HexColor("#364C59"),
                  )),
            ),
            new Container(
              child: CheckboxListTile(
                title: Text(
                  "a. Página Web",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
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
                value: this.medio_web,
                onChanged: (value) {
                  setState(() {
                    this.medio_web = value!;
                    if (this.medio_web == true) {
                      _showAlertDialogSi(context);
                    }
                  });
                },
              ),
            ),
            new Container(
              margin: EdgeInsets.all(15.0),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(110.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          "Dirección y nombre de los medios promocionales",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: HexColor("#364C59"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Periodicidad de la promoción",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: HexColor("#364C59"),
                          ),
                        ),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        new Form(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 1,
                              ),
                              TextField(
                                enabled: this.promocion_si && this.medio_web,
                                maxLength: 300,
                                controller: obs_direccion_medio_web,
                                maxLines: 3,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,

                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintText: "Especifique",
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        new Container(
                          padding: const EdgeInsets.all(10.0),
                          child: DropdownButton(
                            items: <String>[
                              'Ninguna',
                              'Mensual',
                              'Trimestral',
                              'Semanal',
                              'Anual',
                              'Todas',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Escoja una opción",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                _chosenValue = value as String;
                              });
                            },
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(5.0),
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 1,
                                  ),
                                  TextFormField(
                                    enabled: false,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: HexColor("#0D0D0D"),
                                    ),
                                    decoration: InputDecoration(
                                      hintText: this._chosenValue,
                                      contentPadding: EdgeInsets.all(15.0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(10, 10))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    )
                  ]),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}