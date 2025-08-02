import 'package:flutter/material.dart';

import '../Module_8/module_8_class_1_2.dart';
import '../Module_8/module_8_class_1_3.dart';
class Module9Class2 extends StatelessWidget {
  const Module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Module 9 Class 2',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
          backgroundColor: Colors.green,

          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Fav',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Setting',
            ),
          ]),
        ),
        body: TabBarView(children:
        [
          Module8Class12()
         /* Container(
            height: 200,
            color: Colors.orange,
            child: Center(
              child: Text('Home',style: TextStyle(
                fontSize: 20,
              ),),
            ),
          )*/,
          Module8Class13()
          /*Container(
            height: 200,
            color: Colors.yellow,
            child: Center(
              child: Text('Fav',style: TextStyle(
                fontSize: 20,
              ),),
            ),
          )*/,
          Container(
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text('Setting',style: TextStyle(
                fontSize: 20,
              ),),
            ),
          ),
        ]),
        drawer: Drawer(

          child: ListView(
            children: [
              DrawerHeader(child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
            radius: 42
                    ,
                    backgroundImage: NetworkImage('https://images-platform.99static.com/c_ZH9MFCsq5pklBFLgqTrGVoi50=/0x0:1443x1443/500x500/top/smart/99designs-contests-attachments/91/91711/attachment_91711208'),
                  ),

                 SizedBox(height: 10,),
                  Text('Joy Hunuman Ji',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange
                  ),)


                ],
              )),
              ListTile(
                //visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                //dense: true,
                title: Text('Home'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.purple,
              ),
              ListTile(
               // visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('Product Category'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.purple,
              ),
              ListTile(
                //visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('Products list'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.purple,
              ),
              ListTile(
               // visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('Our vision'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.purple,
              ),
              ListTile(
               // visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('About us'),
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
