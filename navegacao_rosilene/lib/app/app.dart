import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page1.dart';
import 'package:navegacao_rosilene/app/pages/page2.dart';
import 'package:navegacao_rosilene/app/pages/page3.dart';
import 'package:navegacao_rosilene/app/pages/page4.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/page1',
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
      },
    );
  }
}
