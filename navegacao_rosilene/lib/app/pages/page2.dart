import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 02'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args),
            const SizedBox(
              height: 70.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page1',
                        arguments: 'VOCÊ ESTÁ NA PÁGINA 01');
                  },
                  child: Text('< Página 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page3',
                        arguments: 'VOCÊ ESTÁ NA PÁGINA 03');
                  },
                  child: Text('Página 3 >'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
