import 'package:flutter/material.dart';

class Rowss1 extends StatelessWidget {
  const Rowss1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task of Row!'),
        titleSpacing: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
        toolbarOpacity: 1,
        toolbarHeight: 60,
        elevation: 10,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network('https://stickystuff.in/wp-content/uploads/2022/03/6-6.jpg'),

          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network('https://stickystuff.in/wp-content/uploads/2022/03/6-6.jpg'),

          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network('https://stickystuff.in/wp-content/uploads/2022/03/6-6.jpg'),

          ),
        ],
      ),
    );

  }
}
