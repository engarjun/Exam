import 'package:flutter/material.dart';

class Module8Class11 extends StatelessWidget {
  const Module8Class11({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 8 class 1 1 ',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          ),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('data'),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Input phone number',
                labelText: 'phone number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.bold 
                ),
                labelStyle: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                )
              ),

            ),
          ),
          SizedBox(height: 10,),

          SizedBox(
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange
                  ),
                  onPressed: (){
                    if(phoneController.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('You are not input phone number!',style: TextStyle(
                            color: Colors.red.shade100,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),))
                      );
                    }else if(phoneController.text.length < 11){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Your phone number not correct & too less!',style: TextStyle(
                            color: Colors.red.shade100,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),))
                      );
                    }else if(phoneController.text.length > 11){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('You input more number than actual!',style: TextStyle(
                          color: Colors.red.shade100,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),))
                      );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(phoneController.text,style: TextStyle(
                            color: Colors.green.shade100,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),))
                      );
                    }
                    //print(phoneController.text);

                  }, child: Text('Login',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)))
        ],
      ),
    );
  }
}
