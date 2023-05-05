import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.buttonval,
      required this.funct,
      required this.bgcolor, required this.textcolor, required this.radi, required this.textsize});

  final String buttonval;
  final VoidCallback funct;
  final Color bgcolor;
  final Color textcolor;
  final double radi;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: funct,
        child: CircleAvatar(
          radius: radi,
          backgroundColor: bgcolor,
          child: Text(
            buttonval,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: textcolor , fontSize: textsize),
          ),
        ),
      ),
    );
  }
}
