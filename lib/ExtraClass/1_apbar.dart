import 'package:flutter/material.dart';
class Appbars extends StatelessWidget {
  const Appbars({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is appbar-----------'),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.amber,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){MySnackBar('Im comments', context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar('I\'m Search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('I\'m settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar('I\'m email', context);}, icon: Icon(Icons.email)),

        ],

      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: (){
          MySnackBar('I\'m floating action button', context);
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.check),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],

        onTap:(int  index){
          if(index == 0){
            MySnackBar('Im home', context);
          }
          if(index == 1){
            MySnackBar('Im Message', context);

          }
          if(index == 2){
            MySnackBar('Im person', context);

          }
        } ,
      ),


    );
  }
}
