import 'package:flutter/material.dart';

class tabla6 extends StatelessWidget {
  final String declarante;

  tabla6(this.declarante);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('Declarante:' + declarante)),
      ),
    );
  }
}
