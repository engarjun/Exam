import 'package:flutter/material.dart';
import 'package:bojrangboliarjo/ExtraClass/All_practics.dart';
class CounterAppClass1 extends StatefulWidget {
   CounterAppClass1({super.key}){
    print('1 Constructor');
  }

  @override
  State<CounterAppClass1> createState(){
     print('2 Create state');
return _CounterAppClass1State();
  }

}

class _CounterAppClass1State extends State<CounterAppClass1> {
  int number =0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3 InitStat');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('4 deactivate');
    super.deactivate();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('5 dispose');
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      )

    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        backgroundColor: Colors.orange,
        elevation: 10,
        titleSpacing: 0,
        centerTitle: true,
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Text(number.toString(),style: TextStyle(

        fontSize: 100,
        fontWeight: FontWeight.bold
      ),),
      SizedBox(height: 50,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              number--;
              print(number);
            });

          }, child: Text('-'),style: buttonStyle,),
          //Spacer(),
          ElevatedButton(onPressed: (){
            setState(() {
              number++;
              print(number);
            });

          }, child: Text('+'),style: buttonStyle,),
        ],
      ),
      ElevatedButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AllPractics() ));
      }, child: Text('Next'))
    ],


    ),
    );
  }
}
