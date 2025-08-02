import 'package:flutter/material.dart';
class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('module 8 class 1', style: TextStyle(
            fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white

        ),),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Please Enter your mobile number and password',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.orange
              ),),

              SizedBox(height: 20,),
              //Text filed
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: 'Enter your number',
                    labelText: 'Phone number',
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check),
                    hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                    ),
                    labelStyle: TextStyle(
                      color: Colors.purple,
                      fontSize: 20
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
          
                  ),
                ),
              ),
              SizedBox(height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                      ),
                      labelStyle: TextStyle(
                          color: Colors.purple,
                          fontSize: 20
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
          
                  ),
                ),
              ),
          
              //Submit button
              SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                      onPressed: (){
                        if(phoneController.text.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please enter your phone number!',style: TextStyle(
                                color: Colors.red.shade100,
                                fontWeight: FontWeight.bold
                              //backgroundColor: Colors.orange
                            )))
                          );
                          //print('Please enter your phone number!');
                        } else if(phoneController.text.length < 11 ){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Please enter correct phone number, number is less!',style: TextStyle(
                                  color: Colors.red.shade100,
                                  fontWeight: FontWeight.bold
                                //backgroundColor: Colors.orange
                              )))
                          );
                          //print('Please enter correct phone number');
                        }else if(phoneController.text.length > 11 ){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Please enter correct phone number, number is more!',style: TextStyle(
                                  color: Colors.red.shade100,
                                  fontWeight: FontWeight.bold
                                //backgroundColor: Colors.orange
                              )))
                          );
                          //print('Please enter correct phone number');
                        } else{
          
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(phoneController.text,style: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.bold
                                //backgroundColor: Colors.orange
                              ),))
                          );
                          //print(phoneController.text);
                        }
                        
                        if(passwordController.text.length < 8){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sorry your password is less than of 8!',style: TextStyle(
                                  color: Colors.red.shade100,
                                  fontWeight: FontWeight.bold
                                //backgroundColor: Colors.orange
                              )))
                          );
                        }
                        // print(phoneController.text);
                        // print(passwordController.text);
                      }, child: Text('Submit',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),))),
              SizedBox(height: 5,
              ),
              //Clear text box
              SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green
                      ),
                      onPressed: (){
          
                          phoneController.clear();
                          passwordController.clear();
                        }
          
                     , child: Text('Clear',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),))),
              SizedBox(height: 20,
              ),
              //Container
              Container(
                alignment: Alignment.center,
              
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Colors.black
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(4, 25)
                    )
                  ]
                ),
                child: Text('This is container'),
              ),
          
              SizedBox(height: 30,
              ),
          
              Card(
          
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green
                      ),
                      onPressed: (){
          
                        phoneController.clear();
                        passwordController.clear();
                      }
          
                      , child: Text('Clears',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),))),
          
          
            ],
          ),
        ),
      ),
    );
  }
}
