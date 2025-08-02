import 'package:flutter/material.dart';
class Buttons1 extends StatelessWidget {
  const Buttons1({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      backgroundColor: Colors.orange.shade100,
      foregroundColor: Colors.cyan,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      )
    );
    ButtonStyle buttonStyle1=OutlinedButton.styleFrom(
        backgroundColor: Colors.orange.shade100,
        foregroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        )
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Task of Buttons---!'),
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
          TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))
                )

              ),
              onPressed: (){MySnackBar('I am Text Button', context);}, child: Text('TextB')),
          ElevatedButton(onPressed: (){MySnackBar('I am ElevatedButton Button', context);}, child: Text('Elevated'),style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar('I am OutlinedButton Button', context);}, child: Text('Outlined'),style: buttonStyle1,)
        ],
      ),
    );
  }
}
