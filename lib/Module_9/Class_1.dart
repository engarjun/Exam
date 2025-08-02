import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialog(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context)=>AlertDialog(
        title: Text('This is title'),
        content: Text('Are you sure......?'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
          ElevatedButton(onPressed: (){}, child: Text('Submit'))
        ],
      ));
    }
    
    void showAlertDialogWithIcon(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Installtion block'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 40,),
                SizedBox(width: 5,),
                Text('Warring')
              ],
            ),
            SizedBox(height: 10,),
            Text('data')
          ],
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Ok'))
        ],
      ));
    }

    void showSimpleDialog(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text('Simple Dialog'),
        children: [
          SimpleDialogOption(
         child: Text('Option-1'),
       ),
          SimpleDialogOption(
            child: TextField(),
          ),
        ],
      ));
    }

    void showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chose Option',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            ListTile(
              title: Text('Option-1'),
              onTap: (){},
              onLongPress: (){},
            ),
            ListTile(
              title: Text('Option-2'),
            ),
            ListTile(
              title: Text('Option-3'),
            ),
            ListTile(
              title: Text('Option-4'),
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Save',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),)))

          ],
        ),
      ));

    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ), 
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.green,
                width: 200,
                height: 100,
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.red,
                width: screenSize.width*0.5,
                height: screenSize.height * 0.3,
              ),
              Text('This is text',style: TextStyle(
                fontSize: screenSize.width > 600 ? 32:18
              ),),
              ElevatedButton(onPressed: (){
                showAlertDialog();
              }, child: Text('Alert Dialog')),
          
              ElevatedButton(onPressed: (){
                showAlertDialogWithIcon();
              }, child: Text('Alert Dialog with Icon')),
          
              ElevatedButton(onPressed: (){
                showSimpleDialog();
              }, child: Text('Simple Dialog')),
          
              ElevatedButton(onPressed: (){
                showBottomSheetAlert();
              }, child: Text('Show Bottom Sheet')),
            ],
          ),
        ),
      ),
    );
  }
}
