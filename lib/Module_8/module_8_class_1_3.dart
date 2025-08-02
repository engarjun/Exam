import 'package:flutter/material.dart';
class Module8Class13 extends StatelessWidget {
  const Module8Class13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
     /* body: GridView.count(

          crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(10, (index) {
          return Card(
            elevation: 10,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.phone_android,size: 60,color: Colors.white,),
                SizedBox(height: 5,),
                Text('Cash out',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),


              ],
            ),
          );
        })
        
       *//* [
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.green,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.blue,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.purple,
            height: 200,
            width: 200,
          )
        ],*//*
      ),*/

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

        itemCount: 20,
          itemBuilder: (context,index){
            return  Card(
              elevation: 10,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.phone_android,size: 60,color: Colors.white,),
                  SizedBox(height: 5,),
                  Text(index.toString(),style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),


                ],
              ),
            );
          },


        /* [
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.green,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.blue,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.purple,
            height: 200,
            width: 200,
          )
        ],*/
      ),
    );
  }
}
