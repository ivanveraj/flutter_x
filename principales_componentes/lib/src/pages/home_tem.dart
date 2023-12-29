import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      //body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String option in opciones) {
      final tempWidget = ListTile(
        title: Text(option),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    /* var widgets = opciones.map((i) {
      return ListTile(
        title: Text(i + '-!'),
      );
    }).toList();

    return widgets; */

    return opciones.map((i) {
      return Column(
        children: [
          ListTile(
            title: Text(
              i + '-!',
              style: TextStyle(fontSize: 22),
            ),
            subtitle: Text('Descripcion'),
            leading: Icon(Icons.add_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("Clic");
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
