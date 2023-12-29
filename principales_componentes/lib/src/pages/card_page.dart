import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de card"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        /* padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ), */
        children: <Widget>[
          _cardTypeOne(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeTwo(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeOne(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeTwo(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeOne(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeTwo(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeOne(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeTwo(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeOne(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTypeTwo(),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Center(
      child: Card(
        elevation: 20.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text(
                'Titulo de la carta',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                  'Descripcion de la carta, texto largo mmm 2233 3333',
                  style: TextStyle(fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Boton 1'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Boton 2'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardTypeTwo() {
    final card = Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          /* const Image(
              image: NetworkImage(
                  'https://images.squarespace-cdn.com/content/v1/5180da74e4b01eeb7aecdc64/1602848189820-UEH8EBDH23JS403A7Z5P/Norway-Lofoten-05-20-1.jpg')
                  ), */
          const FadeInImage(
            placeholder: AssetImage('assets/libro.gif'),
            image: NetworkImage(
                'https://images.squarespace-cdn.com/content/v1/5180da74e4b01eeb7aecdc64/1602848189820-UEH8EBDH23JS403A7Z5P/Norway-Lofoten-05-20-1.jpg'),
            fadeInDuration: Duration(seconds: 4),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Descripcion................"),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
