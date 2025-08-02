import 'package:flutter/material.dart';
class Drawar1 extends StatelessWidget {
  const Drawar1({super.key});

  MyMessage(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arya'),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
/*
              child: Column(

                children: [

                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfVsqpSv5ft7LdZbXNb0QjWfz7hgfpUX9JwK0ZVo8biiZaj0d-BEbxnLCGasYJ4rLG8M&usqp=CAU'),
                  ),

                  Text('sfdf'),

                ],

              ),*/


              // System on
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(

            decoration: BoxDecoration(color: Colors.orange),
        accountName: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Arya Barman'),
          ],
        ),
        accountEmail: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('arya@gmail.com'),


          ],
        ),
                currentAccountPicture:

                // Center(
                  // child: CircleAvatar(

                    // radius: 40,
                    // backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfVsqpSv5ft7LdZbXNb0QjWfz7hgfpUX9JwK0ZVo8biiZaj0d-BEbxnLCGasYJ4rLG8M&usqp=CAU'),

                  // ),
                    SizedBox(
                      child: Column(


                        children: [
                          Padding(
                              padding:EdgeInsets.only(left: 100, top: 0, right: 100, bottom: 0)
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfVsqpSv5ft7LdZbXNb0QjWfz7hgfpUX9JwK0ZVo8biiZaj0d-BEbxnLCGasYJ4rLG8M&usqp=CAU'),
                          )
                          //Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfVsqpSv5ft7LdZbXNb0QjWfz7hgfpUX9JwK0ZVo8biiZaj0d-BEbxnLCGasYJ4rLG8M&usqp=CAU'),
                        ],
                      )),
                ),


        ),
            ListTile( leading: Icon(Icons.home),title: Text('Home'), onTap: (){MyMessage('I\'m Home', context);},),
            Divider(),
            ListTile( leading: Icon(Icons.contacts),title: Text('Contact'),onTap: (){MyMessage('I\'m Contact', context);},),
            Divider(),
            ListTile(leading: Icon(Icons.person),title: Text('Profile'),onTap: (){MyMessage('I\'m Profile', context);},),
            Divider(),
            ListTile(leading: Icon(Icons.email),title: Text('Email'),onTap: (){MyMessage('I\'m Email', context);},),
            Divider(),
            ListTile(leading: Icon(Icons.call),title: Text('Phone'),onTap: (){MyMessage('I\'m Phone', context);},),
          ],
        ),
      ),

    );

  }
}
