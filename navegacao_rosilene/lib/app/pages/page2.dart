import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page3.dart';
import 'package:navegacao_rosilene/app/pages/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ágina 02'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PÁGINA 02'),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
              child: Text(' Página 03 >>'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
              child: Text('<< Página 01'),
            ),
          ],
        ),
      ),
    );
  }
}
