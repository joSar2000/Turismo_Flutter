
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turismo_flutter/components/lista.dart';
import 'package:turismo_flutter/pages/initial_page.dart';


class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  int _currentIndex = 2;
  final tabs = [
    Center(child: Text("Buscar")),
    ListRecursos(),
    initial_page(),
    Center(child: Text("Mapas")),
    Center(child: Text("Ajustes de aplicación")),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro Atractivos Turísticos',
      home: Scaffold(
          backgroundColor: Color(0xFFF0F2F2),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F2F2),
            title: Text(
              'Registro de atractivos turísticos',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xffA65005)),
            ),
            centerTitle: true,
          ),
          //If you want to show body behind the navbar, it should be true
          extendBody: true,
          body: tabs[_currentIndex],
          //floatingActionButtonLocation:
          //  FloatingActionButtonLocation.centerDocked,
          //floatingActionButton: AddRecurso(),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Buscar',
                    backgroundColor: Color(0xff0D0D0D)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    label: 'Listar',
                    backgroundColor: Color(0xff0D0D0D)),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add,
                      color: Color(0xffA65005),
                      size: 40,
                    ),
                    label: 'Añadir',
                    backgroundColor: Color(0xff0D0D0D)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.map),
                    label: 'Mapa',
                    backgroundColor: Color(0xff0D0D0D)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Ajustes',
                    backgroundColor: Color(0xff0D0D0D)),
              ])),
    );
  }
}
