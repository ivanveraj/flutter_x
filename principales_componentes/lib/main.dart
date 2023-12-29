import 'package:flutter/material.dart';
import 'package:principales_componentes/src/pages/alert_page.dart';
import 'package:principales_componentes/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP',
      //home:HomePageTemp()
      //home:Home()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
