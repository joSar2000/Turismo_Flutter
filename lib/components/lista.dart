import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turismo_flutter/components/sitio.dart';

class listRecursos extends StatefulWidget {
  @override
  _listRecursosState createState() => _listRecursosState();
}

class _listRecursosState extends State<listRecursos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F2F2),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('viewTuristas').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Center(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(16),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              "Declarante: " +
                                  document['declarante_espacio'].toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 500,
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff0D0D0D)),
                            ),
                            Text(
                              "Denominación: " +
                                  document['denominacion_espacio'].toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 500,
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Color(0xff0D0D0D)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => tabla6(
                                            document['denominacion_espacio']
                                                .toString())));
                              },
                              child: Text('Ver más'),
                            )
                          ],
                        ),
                      ),
                    )),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
