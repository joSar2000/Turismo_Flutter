import 'package:flutter/material.dart';

class CheckBoxTurism extends StatelessWidget {

  static const String ROUTE = "/check";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Multiple Checkbox Example"),
          ),
          body: SafeArea(
              child : Center(
                child:CheckboxWidget(),

              )
          )
      ),
    );
  }

}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  bool value = false;
  Map <String, bool> values = {
    'si_estado_conservacion' : false,
    'no_estado_conservacion' : false,
    's_i_estado_conservacion' : false,
  };

  var table6_1Arr = [];
  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        table6_1Arr.add(key);
      }
    });
    print(table6_1Arr);
    table6_1Arr.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[

      RaisedButton(
        child: Text(" Get Selected Checkbox Items ", style: TextStyle(fontSize: 18),),
        onPressed: getCheckboxItems,
        color: Colors.deepOrange,
        textColor: Colors.white,
        splashColor: Colors.grey,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),

      Expanded(
        child :
        ListView(
          children: values.keys.map((String key) {
            return new CheckboxListTile(
                title: new Text(key),
                value: values[key],
                activeColor: Colors.pink,
                checkColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    values[key] = value!;
                  });
                }
            );
          }).toList(),
        ),
      ),]);
  }

}