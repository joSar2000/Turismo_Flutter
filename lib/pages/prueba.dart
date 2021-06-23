import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Radio Button Group Example"),
          ),
          body: SafeArea(
              child : Center(

                child:RadioGroup(),

              )
          )
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class FruitsList {
  String name;
  bool index;
  FruitsList({required this.name, required this.index});
}

class RadioGroupWidget extends State {

  // Default Radio Button Item
  String radioItem = 'Mango';

  // Group Value for Radio Button.
  //int id = 1;
  bool id = false;

  List<FruitsList> fList = [
    FruitsList(
      index: false,
      name: "Mang",
    ),
    FruitsList(
      index: false,
      name: "Apple",
    ),
    FruitsList(
      index: false,
      name: "Banana",
    ),
    FruitsList(
      index: false,
      name: "Cherry",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 23))
        ),

        Expanded(
            child: Container(
              height: 350.0,
              child: Column(
                children:
                fList.map((data) => RadioListTile(
                  title: Text("${data.name}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      id = data.index;
                      print(id);
                    });
                  },
                )).toList(),
              ),
            )),

      ],
    );
  }
}

class Values {
  bool si_estado_conservacion = false;
  String observaciones_atractivo_U = "";

  setValues(bool si_estado_conservacion, String observaciones_atractivo_U){
    this.si_estado_conservacion = si_estado_conservacion;
    this.observaciones_atractivo_U = observaciones_atractivo_U;
    print(observaciones_atractivo_U);
  }

}
