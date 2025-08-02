import 'package:flutter/material.dart';
class Module8Class12 extends StatelessWidget {
  const Module8Class12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 8 Class 1 2',style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Form(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
              )
            ],
          ))
        ],
      ),

    );
  }
}
