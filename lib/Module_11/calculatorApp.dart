import 'package:bojrangboliarjo/Module_11/widget/buildButton.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  String _history = '';
  String _res = '';
  String _textToDisplay = '';
  String _ope = '';
  int num1 = 0;
  int num2 = 0;

  void buttonPress(String value) {
    print('value = $value');

      if (value == 'C') {
        _textToDisplay = '';
        num1 = 0;
        num2 = 0;
        _res='';
        _history='';

      }else if(value=='+' || value=='-' || value=='*' || value=='÷' ){
        num1 = int.parse(_textToDisplay);
        _res='';
        _ope = value;
      }else if(value == '='){
        num2 = int.parse(_textToDisplay);
        if(_ope == '+'){
          _res = (num1 + num2).toString();

          if(value == '='){
            _history = '$num1$_ope$num2=';
          }
        }
        if(_ope == '-'){
          _res = (num1 - num2).toString();
          if(value == '=') {
            _history = '$num1$_ope$num2=';
          }
        }
        if(_ope == '*'){
          _res = (num1 * num2).toString();
          if(value == '=') {
            _history = '$num1$_ope$num2=';
          }
        }
        if(_ope == '÷'){
          _res = (num1 / num2).toString();
          if(value == '=') {
            _history = '$num1$_ope$num2=';
          }
        }
      }else{
        _res = int.parse(_textToDisplay + value).toString();
      }

      setState(() {
        _textToDisplay = _res;

      });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [

          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 60),
              child: Text(
                _history,
                style: TextStyle(
                  color: Color(0x66FFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30),
              child: Text(

                _textToDisplay
                ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Row(
            children: [
              buildButton(onClick: () => buttonPress('7'), text: '7'),
              buildButton(onClick: () => buttonPress('8'), text: '8'),
              buildButton(onClick: () => buttonPress('9'), text: '9'),
              buildButton(
                onClick: () => buttonPress('÷'),
                text: '÷',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('4'), text: '4'),
              buildButton(onClick: () => buttonPress('5'), text: '5'),
              buildButton(onClick: () => buttonPress('6'), text: '6'),
              buildButton(
                onClick: () => buttonPress('*'),
                text: '*',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('1'), text: '1'),
              buildButton(onClick: () => buttonPress('2'), text: '2'),
              buildButton(onClick: () => buttonPress('3'), text: '3'),
              buildButton(
                onClick: () => buttonPress('-'),
                text: '-',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('C'), text: 'C'),
              buildButton(onClick: () => buttonPress('0'), text: '0'),
              buildButton(onClick: () => buttonPress('='), text: '='),
              buildButton(
                onClick: () => buttonPress('+'),
                text: '+',
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
