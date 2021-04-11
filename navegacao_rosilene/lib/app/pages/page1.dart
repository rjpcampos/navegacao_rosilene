import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_rosilene/app/pages/page2.dart';

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
              Text('PÁGINA 01'),
              const SizedBox(
                height: 20.0,
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
                child: Text('Página 02 >>'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
