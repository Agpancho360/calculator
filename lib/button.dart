import 'package:flutter/material.dart';
import 'package:calculator/main.dart';

class CalculatorButton extends StatelessWidget {
  //Initializes variables
  final String number;
  final int flexNum;
  //Constructor(basically the parameters)
  const CalculatorButton({super.key, required this.number,required this.flexNum});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexNum,
      child: ElevatedButton(
        onPressed: () {
          print('Pressed $number');
        },
        child: Text(
          '$number',
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.blueGrey[50],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
