import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page1.dart';
import 'package:navegacao_rosilene/app/pages/page3.dart';

class Page4 extends StatelessWidget {
  const Page4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 04'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('VOCÊ ESTÁ NA PÁGINA 04'),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Page3(),
                      ),
                    );
                  },
                  child: Text('< Página 3'),
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
                  child: Text('<< Página 1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
