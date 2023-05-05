import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.buttonval,
    required this.funct,
    required this.color,
    required this.width,
    required this.height,
    required this.textsize,
    required this.textcolor,
  });

  final String buttonval;
  final VoidCallback funct;
  final Color color;
  final double width;
  final double height;
  final double textsize;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: MaterialButton(
        textColor: textcolor,
        color: color,
        height: height,
        minWidth: width,
        onPressed: funct,
        child: Center(
          child: Text(
            buttonval,
            style: TextStyle(fontSize: textsize),
          ),
        ),
      ),
    );
  }
}
