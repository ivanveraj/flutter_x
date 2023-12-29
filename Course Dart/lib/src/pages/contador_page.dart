import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _Texts = new TextStyle(fontSize: 30);
  int _contador = 10;

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
              "Contador Numero de clic´s",
              style: _Texts,
            ),
            Text("Pulsaciones: $_contador", style: _Texts)
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _botones()
        /* FloatingActionButton(
        onPressed: () {
          //_contador++;
          setState(() {
            _contador++;
          });
        },
        child: Icon(Icons.access_alarm), ),*/
        );
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              setState(() {
                _contador = 0;
              });
            }),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _contador--;
              });
            }),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _aumentar)
      ],
    );
  }

  void _aumentar() {
    setState(() => _contador++);
  }
}
