import 'package:flutter/material.dart';
class Apbar1 extends StatelessWidget {
  const Apbar1({super.key});
  
  MyappBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is appBar_1'),
        titleSpacing: 0,
        backgroundColor: Colors.amber,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){MyappBar('This is message', context);}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){MyappBar('This is search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MyappBar('This is settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MyappBar('This is email', context);}, icon: Icon(Icons.email)),
        ],

      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed:(){MyappBar('I\'m Snack bar', context);} ,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add,color: Colors.white,),
      
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ],
      onTap:(int index){
            if(index == 0) {
              MyappBar('I\'m Home', context);
            }
            if(index == 1) {
              MyappBar('I\'m Message', context);
            }
            if(index == 2) {
              MyappBar('I\'m Profile', context);
            }
      },
        backgroundColor: Colors.amber,
      ),
    );
  }
}
