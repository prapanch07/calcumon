import 'package:calcumon/widgets/display_screen_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String val = '';

  double? number1, number2, result, c;
  String? _operator;

  final displaycontroller = TextEditingController();

  void onDigitButtonPressed(String digit) {
    setState(() {
      val += digit;
    });
  }

  void onOperatorPressed(String operator) {
    number1 = double.parse(val);
    _operator = operator;
    setState(() {
      val = '';
    });
  }

  void onEqualPressed() {
    number2 = double.parse(val);
    switch (_operator) {
      case '+':
        result = number1! + number2!;
        break;
      case '-':
        result = number1! - number2!;
        break;
      case '/':
        result = number1! / number2!;
        break;
      case 'X':
        result = number1! * number2!;
        break;
      case '%':
        result = number1! % number2!;
        break;

      default:
    }
    setState(() {
      val = result.toString();
    });
  }

  void onClear() {
    setState(() {
      val = '';
      number1 = null;
      number2 = null;
      _operator = null;
    });
  }

  void ondec() {
    if (!val.contains('.')) {
      setState(() {
        val += '.';
      });
    }
  }

  void erase() {
    setState(() {
      if (val.isNotEmpty) {
        setState(() {
          val = val.substring(0, val.length - 1);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('CalcuMon'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          DisplayScreen(
            displayvalue: val,
            controller: displaycontroller,
          ),
          Row(
            children: [
              ButtonWidget(
                textsize: 30,
                buttonval: 'C',
                funct: () => onClear(),
                color: Colors.transparent,
                width: 100,
                height: 80,
                textcolor: Colors.red,
              ),
              ButtonWidget(
                textsize: 38,
                buttonval: '÷',
                textcolor: Colors.cyan,
                funct: () => onOperatorPressed('/'),
                color: Colors.transparent,
                width: 100,
                height: 80,
              ),
              ButtonWidget(
                textcolor: Colors.cyan,
                textsize: 27,
                buttonval: 'X',
                funct: () => onOperatorPressed('X'),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
              ButtonWidget(
                textcolor: Colors.cyan,
                textsize: 40,
                buttonval: '⌫',
                funct: () => erase(),
                
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                textsize: 30,
                buttonval: '7',
                funct: () => onDigitButtonPressed('7'),
                color: Colors.transparent,
                width: 100,
                height: 80,
                textcolor: Colors.white,
              ),
              ButtonWidget(
                textsize: 30,
                buttonval: '8',
                textcolor: Colors.white,
                funct: () => onDigitButtonPressed('8'),
                color: Colors.transparent,
                width: 100,
                height: 80,
              ),
              ButtonWidget(
                textcolor: Colors.white,
                textsize: 27,
                buttonval: '9',
                funct: () => onDigitButtonPressed('9'),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
              ButtonWidget(
                textcolor: Colors.cyan,
                textsize: 40,
                buttonval: '-',
                funct: () => onOperatorPressed('-'),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                textsize: 30,
                buttonval: '4',
                funct: () => onDigitButtonPressed('4'),
                color: Colors.transparent,
                width: 100,
                height: 80,
                textcolor: Colors.white,
              ),
              ButtonWidget(
                textsize: 30,
                buttonval: '5',
                textcolor: Colors.white,
                funct: () => onDigitButtonPressed('5'),
                color: Colors.transparent,
                width: 100,
                height: 80,
              ),
              ButtonWidget(
                textcolor: Colors.white,
                textsize: 27,
                buttonval: '6',
                funct: () => onDigitButtonPressed('6'),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
              ButtonWidget(
                textcolor: Colors.cyan,
                textsize: 40,
                buttonval: '+',
                funct: () => onOperatorPressed('+'),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
            ],
          ),

          //equals ... rw
          Row(
            children: [
              ButtonWidget(
                textsize: 30,
                buttonval: '1',
                funct: () => onDigitButtonPressed('1'),
                color: Colors.transparent,
                width: 100,
                height: 80,
                textcolor: Colors.white,
              ),
              ButtonWidget(
                textsize: 30,
                buttonval: '2',
                textcolor: Colors.white,
                funct: () => onDigitButtonPressed('2'),
                color: Colors.transparent,
                width: 100,
                height: 80,
              ),
              ButtonWidget(
                textcolor: Colors.white,
                textsize: 27,
                buttonval: '3',
                funct: () => onDigitButtonPressed('3'),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
              ButtonWidget(
                textcolor: Colors.white,
                textsize: 40,
                buttonval: '=',
                funct: () => onEqualPressed(),
                color: Colors.red,
                width: 85,
                height: 65,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                textsize: 30,
                buttonval: '%',
                funct: () => onOperatorPressed('%'),
                color: Colors.transparent,
                width: 100,
                height: 80,
                textcolor: Colors.white,
              ),
              ButtonWidget(
                textsize: 30,
                buttonval: '0',
                textcolor: Colors.white,
                funct: () => onDigitButtonPressed('0'),
                color: Colors.transparent,
                width: 100,
                height: 80,
              ),
              ButtonWidget(
                textcolor: Colors.white,
                textsize: 27,
                buttonval: '.',
                funct: () => ondec(),
                color: Colors.transparent,
                width: 85,
                height: 66,
              ),
              ButtonWidget(
                textsize: 28,
                buttonval: '00',
                textcolor: Colors.white,
                funct: () => onDigitButtonPressed('00'),
                color: Colors.transparent,
                width: 85,
                height: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
