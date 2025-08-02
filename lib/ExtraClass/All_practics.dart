import 'package:flutter/material.dart';
class AllPractics extends StatelessWidget {
  const AllPractics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task of Task of boyd---!'),
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

            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),


            ),
            child: Image.network('https://i.pinimg.com/236x/c3/30/b1/c330b1e94f12abc506ab6f81779cdb69.jpg'),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network('https://i.pinimg.com/236x/c3/30/b1/c330b1e94f12abc506ab6f81779cdb69.jpg'),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network('https://i.pinimg.com/236x/c3/30/b1/c330b1e94f12abc506ab6f81779cdb69.jpg'),
          ),
        ],
      ),





    );
  }
}
