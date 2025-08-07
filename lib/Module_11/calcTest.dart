import 'package:bojrangboliarjo/Module_11/widget/buildButton.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0';
  String _output1 = '';
  String _display = '';
  String _input = '0';
  String _ope = '0';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value) {
    print('value = $value');
    setState(() {
      _output1 = _output1 + value;


      if (value == 'C') {
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
        _output1='';
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_ope == '+') {
          _output = (num1 + num2).toString();
          _output1 = num1.toString() + _ope.toString() + num2.toString();
        } else if (_ope == '-') {
          _output = (num1 - num2).toString();
          _output1 = num1.toString() + _ope.toString() + num2.toString();
        } else if (_ope == '*') {
          _output = (num1 * num2).toString();
          _output1 = num1.toString() + _ope.toString() + num2.toString();
        } else if (_ope == '÷') {
          _output = num2 != 0 ? (num1 / num2).toString() : 'Error';
          _output1 = num1.toString() + _ope.toString() + num2.toString();
        }
      } else if (['+', '-', '*', '÷'].contains(value)) {
        num1 = double.parse(_input);
        _ope = value;
        _input = '';
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        setState(() {
          _output = _input;
        });

      }
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
                _output1,
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
                _output,
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
