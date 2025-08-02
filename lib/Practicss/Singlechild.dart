import 'package:flutter/material.dart';
class SingleChild extends StatelessWidget {
  const SingleChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Child',style: TextStyle(
          color: Colors.orange,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        //backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          FittedBox(
            child: Text("Auto-resized text"),
          ),

          SizedBox(
            height: 250,
              width: 200,
              child: Image.network('https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png')),

          Row(
            children: [
              Expanded(
                  child: Text("Takes all available space")
              ),
              Text("Fixed size"),
            ],
          )

        ],
      ),
    );
  }
}
