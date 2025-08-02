import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class Stacks extends StatelessWidget {
  const Stacks({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Stack Example'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Text(
                'Top',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );

  }
}
