import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage(),));
}

class MyHomePage extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<MyHomePage> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Basic List Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            new Text(
              "Pictorama de atractivos naturales",
              textAlign: TextAlign.center,
            ),
            new Container(
              margin: EdgeInsets.all(10),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(110.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Madera', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Aluminio', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Otro', style: TextStyle(fontSize: 20.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      TextField(
                        keyboardType:  TextInputType.number,
                        textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Ingrese número",
                      ),
                    )]),
                    Column(children: [TextField(textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Ingrese número",
                      ),
                    )]),
                    Column(children: [TextField(textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Ingrese número",
                      ),
                    )]),
                  ]),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Ingrese la especificación",
              ),
            ),
            new Row(
              children: <Widget> [
                Container(
                  child: Text("B"),
                  padding: EdgeInsets.fromLTRB(19.0, 10.0, 0.0, 0.0),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Container(
                  child: Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: this.valuefirst,
                    onChanged: (value) {
                      setState(() {
                        this.valuefirst = value!;
                        print (this.valuefirst);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 0.0),
                  child: Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: this.valuesecond,
                    onChanged: (value) {
                      setState(() {
                        this.valuesecond = value!;
                        print (this.valuesecond);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                  child: Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: this.valuefirst,
                    onChanged: (value) {
                      setState(() {
                        this.valuefirst = value!;
                        print (this.valuefirst);
                      });
                    },
                  ),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            TextField(),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            TextField(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }

}
