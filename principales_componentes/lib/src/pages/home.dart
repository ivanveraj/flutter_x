import 'package:flutter/material.dart';
import 'package:principales_componentes/src/pages/alert_page.dart';
import 'package:principales_componentes/src/providers/menu_provider.dart';
import 'package:principales_componentes/src/utils/icon_string_util.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes Flutter",
            style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.grey.shade900,
      ),
      body: _examples(),
      /* body: const Center(
          child: Text("Hola", style: TextStyle(color: Colors.grey))), */
      backgroundColor: Colors.grey.shade900,
      floatingActionButton: FloatingActionButton(
        onPressed: setMessage,
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.grey.shade900,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _examples() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsJson(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _itemsJson(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((option) {
      final widgetTemp = ListTile(
        title: Text(
          option['texto'],
          style: TextStyle(color: Colors.grey),
        ),
        leading: getIcon(option['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue.shade300 ,
        ),
        onTap: () {
          /*
          Forma de navegacion 
          final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route); */
          Navigator.pushNamed(context, option['ruta']);
        },
      );
      options.add(widgetTemp);
    });
    return options;
  }

  setMessage() {
    print("Hett");
  }
}
