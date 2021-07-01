import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turismo_flutter/pages/viewturista_table7.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:turismo_flutter/pages/viewturista_table9.dart';

class TableTurism8 extends StatefulWidget {
  static const String ROUTE = "tabla8";

/*
  TableTurism6_2(
      {Key? key,
      required this.si_estado_conservacion,
      required this.observaciones_atractivo_U,
      required this.si_higiene_turistica})
      : super(key: key);

 */
  @override
  State<StatefulWidget> createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State<TableTurism8> {

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
  static TextEditingController obs_politicas_planificacion_espec = TextEditingController();
  static TextEditingController obs_politicas_normativas_espec = TextEditingController();
  static TextEditingController obs_politicas_ordenanzas_espec = TextEditingController();
  static TextEditingController obs_politicas_observaciones = TextEditingController();

  bool politicas_si = false;
  bool politicas_no = false;
  bool politicas_s_i = false;
  bool politicas_gad_si = false;
  bool politicas_gad_no = false;
  bool politicas_planificacion_si = false;
  bool politicas_planificacion_no = false;
  String politicas_planificacion_espec = obs_politicas_planificacion_espec.text;
  bool politicas_normativas_si = false;
  bool politicas_normativas_no = false;
  String politicas_normativas_espec = obs_politicas_normativas_espec.text;
  bool politicas_ordenanzas_si = false;
  bool politicas_ordenanzas_no = false;
  String politicas_ordenanzas_espec = obs_politicas_ordenanzas_espec.text;
  String politicas_observaciones = obs_politicas_observaciones.text;
  int optionGroupFirst = 0;
  int optionGroupSecond = 0;
  int optionGroupThird = 0;
  int optionGroupFourth = 0;
  int optionGroupFive = 0;
  late int selectedOption;

  void initState() {
    super.initState();
    optionGroupFirst = 0;
    optionGroupSecond = 0;
    optionGroupThird = 0;
    optionGroupFourth = 0;
    selectedOption = 0;
    optionGroupFive = 0;
  }

  setSelectedRadioFirst (int val) {
    setState(() {
      optionGroupFirst = val;
      if (optionGroupFirst == 1) {
        this.politicas_si = true;
        this.politicas_no = false;
        this.politicas_s_i = false;
        if (this.politicas_si == true) {
          _showAlertDialogSi(context);
        }
      } else if (optionGroupFirst == 2) {
        this.politicas_si = false;
        this.politicas_no = true;
        this.politicas_s_i = false;
        if (this.politicas_no == true) {
          _showAlertDialogNo(context);
        }
      } else if (optionGroupFirst == 3) {
        this.politicas_si = false;
        this.politicas_no = false;
        this.politicas_s_i = true;
      }
    });
  }
  setSelectedRadioSecond (int val) {
    setState(() {
      optionGroupSecond = val;
      if (optionGroupSecond == 1) {
        this.politicas_gad_si = true;
        this.politicas_gad_no = false;
      } else if (optionGroupSecond == 2) {
        this.politicas_gad_si = false;
        this.politicas_gad_no = true;
      }
    });
  }
  setSelectedRadioThird (int val) {
    setState(() {
      optionGroupThird = val;
      if (optionGroupThird == 1) {
        this.politicas_planificacion_si = true;
        this.politicas_planificacion_no = false;
      } else if (optionGroupThird == 2) {
        this.politicas_planificacion_si = false;
        this.politicas_planificacion_no = true;
      }
    });
  }
  setSelectedRadioFourth (int val) {
    setState(() {
      optionGroupFourth = val;
      if (optionGroupFourth == 1) {
        this.politicas_normativas_si = true;
        this.politicas_normativas_no = false;
      } else if (optionGroupFourth == 2) {
        this.politicas_normativas_si = false;
        this.politicas_normativas_no = true;
      }
    });
  }
  setSelectedRadioFive (int val) {
    setState(() {
      optionGroupFive = val;
      if (optionGroupFive == 1) {
        this.politicas_ordenanzas_si = true;
        this.politicas_ordenanzas_no = false;
      } else if (optionGroupFive == 2) {
        this.politicas_ordenanzas_si = false;
        this.politicas_ordenanzas_no = true;
      }
    });
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
  void _showAlertDialogTable(BuildContext context) {
    showDialog <String> (
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AVISO', textAlign: TextAlign.center,),
          content: const Text(
            'Debe llenar esta columna con la información correspondiente',
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
                  Navigator.pop(
                    context
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => turismTable9()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: HexColor("#F0F2F2"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#F0F2F2"),
          title: Text('8. POLÍTICAS Y REGULACIONES',
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
          children: <Widget> [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: RadioListTile(
                      value: 1,
                      groupValue: optionGroupFirst,
                      title: Text("SI"),
                      onChanged: (val) {
                        setSelectedRadioFirst(val as int);
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
                        groupValue: optionGroupFirst,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadioFirst(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
                Flexible(
                  child: Container(
                      child: RadioListTile(
                        value: 3,
                        groupValue: optionGroupFirst,
                        title: Text("S/I"),
                        onChanged: (val) {
                          setSelectedRadioFirst(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "a. ¿El GAD cuenta con el Plan de Desarrollo Turístico Territorial?",
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
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Año de elaboración del documento",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: HexColor("#364C59"),
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            enabled: false,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: HexColor("#0D0D0D"),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20.0),
                              hintText: currentDate.toString(),
                              labelText: ("[AAAA-MM-DD]\n[" +
                                  currentDate.toString() +
                                  "]"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: FloatingActionButton(
                elevation: 20.0,
                child: Icon(Icons.calendar_today),
                onPressed: () => _selectDate(context),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "b. ¿El atractivo se encuentra dentro de la planificación turística territorial (GAD'S)?",
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
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Especifíque",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            enabled: this.politicas_planificacion_si && politicas_si,
                            controller: obs_politicas_planificacion_espec,
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "c. ¿Existen normativas que se apliquen para el desarrollo de la actividad turística en el atractivo?",
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
                        groupValue: optionGroupFourth,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadioFourth(val as int);
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
                        groupValue: optionGroupFourth,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadioFourth(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Especifíque",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            enabled: this.politicas_normativas_si && politicas_si,
                            controller: obs_politicas_normativas_espec,
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Flexible(
                  child: Container(
                    child: Text(
                      "d. ¿Existen ordenanzas que se apliquen para el desarrollo de la actividad turística en el atractivo?",
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
                        groupValue: optionGroupFive,
                        title: Text("SI"),
                        onChanged: (val) {
                          setSelectedRadioFive(val as int);
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
                        groupValue: optionGroupFive,
                        title: Text("NO"),
                        onChanged: (val) {
                          setSelectedRadioFive(val as int);
                        },
                        activeColor: Colors.indigo,
                        selected: false,
                      )
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Text("Especifíque",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor("#364C59"),
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            enabled: this.politicas_ordenanzas_si && politicas_si,
                            controller: obs_politicas_ordenanzas_espec,
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      enabled: this.politicas_si,
                      controller: obs_politicas_observaciones,
                      maxLines: 3,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: HexColor("#99AD8F"),
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.input_outlined),
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Ingrese sus observaciones",
                        labelText: ("Observaciones"),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
