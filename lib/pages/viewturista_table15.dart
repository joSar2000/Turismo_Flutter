import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:android_intent/android_intent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class TurismTable15 extends StatefulWidget {
  @override
  _MapaState createState() => new _MapaState();
}

class _MapaState extends State<TurismTable15> {

  bool mapToggle = false;
  bool sitiosToggle = false;
  var currentLocation;
  var aux;
  String text = "";
  late GoogleMapController mapController;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  @override
  void initState() {
    Geolocator.getCurrentPosition().then((currLoc) {
      currentLocation = currLoc;
      mapToggle = true;
    });
    populateClients();
    super.initState();
    _set();
  }


  onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }

  populateClients() {
    FirebaseFirestore.instance.collection('markers').get().then((docs) {
      if (docs.docs.isNotEmpty) {
        for (int i = 0; i < docs.docs.length; ++i) {
          initMarkers(docs.docs[i].data, docs.docs[i].id);
          print(docs.docs[i].data());
          //print("," + docs.docs[i].id);
        }
      }
    });
  }


  void initMarkers(request, requestID) {
    sitiosToggle = true;
    var markerIdVal = requestID;
    final MarkerId markerId = MarkerId(markerIdVal);

    final Marker marker = Marker(
        markerId: markerId,
        position: LatLng(request['lat'], request['lng']),
        draggable: true,
        onTap: () {
          getValues(request);
        },
        infoWindow:
        InfoWindow(title: "Barrio: ", snippet: request['provincia']));
        //InfoWindow(title: "Barrio: ", snippet: "Prueba"));
    setState(() {
      markers[markerId] = marker;
      print(markerId);
    });
  }

  void getValues(request) {
    setState(() {
      text = request['provincia'].toString();
    });
    print(text);
  }
  
  void _set () async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      print('denied forever');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: HexColor("#F0F2F2"),
        title: Text('MAPA DE REFERENCIA',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              fontSize: 20,
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
      ),
      backgroundColor: Color(0xFFF9F9F9),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  margin:
                  EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 0),
                  height: MediaQuery.of(context).size.height - 190.0,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        heightFactor: 0.3,
                        widthFactor: 2.5,
                        child: mapToggle
                            ? GoogleMap(
                            markers: Set<Marker>.of(markers.values),
                            onMapCreated: onMapCreated,
                            myLocationEnabled: true,
                            compassEnabled: true,
                            zoomGesturesEnabled: true,
                            zoomControlsEnabled: false,
                            initialCameraPosition: CameraPosition(
                              target: LatLng(currentLocation.latitude,
                                  currentLocation.longitude),
                              zoom: 15.0,
                            ),
                            mapType: MapType.normal)
                            : Center(
                          child: Text('Cargando Mapa...',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF0E8AC9))),
                        )),
                  ))
            ],
          ),
          /*
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width / 2,
                  margin: EdgeInsets.only(
                      left: 10.0,
                      top: (MediaQuery.of(context).size.height) / 10),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 25.0),
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(
                    left: 10.0, top: (MediaQuery.of(context).size.height) / 10),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Color(0xFF0E8AC9),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/catalogo',
                        arguments: text,
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: Text(
                          'Buscar Catálogo',
                          style: TextStyle(color: Color(0xFFF9F9F9)),
                        ))),
              ),
            ],
          )

        */
          new Text(
            "$text"
          ),
        ],
      ),
    );
  }
}