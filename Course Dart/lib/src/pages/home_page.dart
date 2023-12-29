import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Texts = new TextStyle(fontSize: 30);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primer AppBar"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Numero de clic´s",
            style: Texts,
          ),
          Text("Pulsaciones: $contador", style: Texts)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_alarm),
      ),
    );
  }
}
