import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page2.dart';
import 'pages/page1.dart';
import 'pages/page3.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}
