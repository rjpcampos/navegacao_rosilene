import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 02'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página 02'),
            const SizedBox(
              height: 20.0,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => Page3(),
            //       ),
            //     );
            //   },
            //   child: Text('Ir para página 03'),
            // ),
          ],
        ),
      ),
    );
  }
}
