import 'package:flutter/material.dart';

import 'ExtraClass/All_practics.dart';

import 'ExtraClass/Exam.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,

      //home: AllPractics(),

      //home: Home(),
      //home: Module8Class1(),
      //home: ListV(),
      //home: Module8Class11(),
      //home: Module8Class12(),
      //home: Module8Class13(),
      //home: Alert(),
      //home: Module9Class2(),
      //home: OwnWidget(),
      //home: Stacks(),
      //home: Appbars(),
      //home: Apbar1(),
      //home: Drawar1(),
      //home: Bodys1(),
      //home: Rowss1(),
      //home: Buttons1(),
      home: Exams(),


    );
  }
}
