import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Class_3',style: TextStyle(
          color: Colors.white,
              fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          
          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)
          ), child: Text('Submit',style: TextStyle( color: Colors.white ),)),

          SizedBox(
            height: 10,
          ),
          
          SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  onPressed: (){}, child: Text('Submit1'))),
          SizedBox(
            height: 10,
          ),
          
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )
            ),
              onPressed: (){}, child: Text('Outline Button')),
          SizedBox(
            height: 10,
          ),

          TextButton(
              style: TextButton.styleFrom(

                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)
                )
              ),
              onPressed: (){}, child: Text('Text Button',style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
            //backgroundColor: Colors.black,

          ),)),
          SizedBox(
            height: 10,
          ),
          Icon(Icons.phone_android,
          size: 50,
            color: Colors.green,
          ),
          IconButton(onPressed: (){
            print('Icon Button');
          }, icon: Icon(Icons.phone_android,size: 100,color: Colors.orange,)),

        GestureDetector(
          onTap: (){
            print('this is GestureDetector');
          },
            child: Text('GestureDetector',style: TextStyle(
              fontSize: 20,
              color: Colors.pink,
              fontWeight: FontWeight.bold
            ),)),

          InkWell(
            onTap: (){
              print('InkWell Tap');
            },
            child: Text('Inkwell',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.purple
            ),),
          ),

          Padding(
            //padding: EdgeInsets.all(10),
            //padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Text('Pading',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink
            ),),
          )


        ],
      ),
    );
  }
}
