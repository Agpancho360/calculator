import 'package:flutter/material.dart';
import 'button.dart';

void main() {
  runApp(const MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        title: const Text(
          'Pancho Calculator',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex:1,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Expression')]), 
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text('Result')]), ]
                ),
            ),
          ),
          Expanded(
            flex:1,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(number: 'AC', flexNum: 1),
                      CalculatorButton(number: '+/-', flexNum: 1),
                      CalculatorButton(number: '%', flexNum: 1),
                      CalculatorButton(number: '/', flexNum: 1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(number: '7', flexNum: 1),
                      CalculatorButton(number: '8', flexNum: 1),
                      CalculatorButton(number: '9', flexNum: 1),
                      CalculatorButton(number: 'X', flexNum: 1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(number: '4', flexNum: 1),
                      CalculatorButton(number: '5', flexNum: 1),
                      CalculatorButton(number: '6', flexNum: 1),
                      CalculatorButton(number: '-', flexNum: 1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(number: '1', flexNum: 1),
                      CalculatorButton(number: '2', flexNum: 1),
                      CalculatorButton(number: '3', flexNum: 1),
                      CalculatorButton(number: '+', flexNum: 1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(number: '0', flexNum: 2),
                      CalculatorButton(number: '.', flexNum: 1),
                      CalculatorButton(number: '=', flexNum: 1),
                    ],
                  ),
                  // Add more rows and buttons as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
