import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key, required this.controller, required this.displayvalue});

  final TextEditingController controller;
  

 final  String displayvalue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(bottom: 60),
      child: SizedBox(
          width: double.infinity,
          height: 70,
          // color: Colors.red, 
          child: Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Text(
              displayvalue,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white
              ),
              textAlign: TextAlign.end,
            ),
          )),
    );
  }
}
