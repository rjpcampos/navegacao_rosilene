import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page2.dart';
import 'package:navegacao_rosilene/app/pages/page3.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!Navigator.canPop(context)) return Future.value(false);

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Página 01'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('VOCÊ ESTÁ NA PÁGINA 01'),
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
                    child: Text('< Página 03'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Page2(),
                        ),
                      );
                    },
                    child: Text('Página 02 >'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
