import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 03'),
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
                    Navigator.pushReplacementNamed(context, '/page2',
                        arguments: 'VOCÊ ESTÁ NA PÁGINA 02');
                  },
                  child: Text('< Página 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page4',
                        arguments: 'VOCÊ ESTÁ NA PÁGINA 04');
                  },
                  child: Text('Página 4 >'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
