import 'package:calcultor_ui/calcultor_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class calcultorScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<calcultorScreen> createState() => _calcultorScreenState();
}

class _calcultorScreenState extends State<calcultorScreen> {
  String resultText = '';
  String savedNumber = '';
  String savedOperator = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        shadowColor: Colors.transparent,
        title: Text(
          'Calcultor',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 12),
                // color: Colors.amber,
                child: Text(
                  resultText,
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcultorButton(text: 'AC', onPressed: onResetClicked),
                  CalcultorButton(text: 'x', onPressed: onDigitClicked),
                  CalcultorButton(text: '-', onPressed: onOperatorClicked),
                  CalcultorButton(text: '=', onPressed: onEqualClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcultorButton(text: '7', onPressed: onDigitClicked),
                  CalcultorButton(text: '8', onPressed: onDigitClicked),
                  CalcultorButton(text: '9', onPressed: onDigitClicked),
                  CalcultorButton(text: '*', onPressed: onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcultorButton(text: '4', onPressed: onDigitClicked),
                  CalcultorButton(text: '5', onPressed: onDigitClicked),
                  CalcultorButton(text: '6', onPressed: onDigitClicked),
                  CalcultorButton(text: '/', onPressed: onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcultorButton(text: '1', onPressed: onDigitClicked),
                  CalcultorButton(text: '2', onPressed: onDigitClicked),
                  CalcultorButton(text: '3', onPressed: onDigitClicked),
                  CalcultorButton(text: '+', onPressed: onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcultorButton(text: '.', onPressed: onDotClicked),
                  CalcultorButton(text: '0', onPressed: onDigitClicked),
                  CalcultorButton(text: 'x', onPressed: onOperatorClicked),
                  CalcultorButton(text: '=', onPressed: onEqualClick),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDigitClicked(String digit) {
    setState(() {
      resultText += digit;
    });
  }

  void onOperatorClicked(String operator) {
    if (resultText.isEmpty) return;
    if (savedNumber.isEmpty) {
      savedNumber = resultText;
      savedOperator = operator;
    } else {
      calculate(savedNumber, savedOperator, resultText);
      savedNumber = resultText;
      savedOperator = operator;
    }
    resultText = '';
    setState(() {});
  }

  double convertToDouble(String digits) {
    var n = double.parse(digits);
    return n;
  }

  void calculate(String lhs, String operator, String rhs) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    switch (operator) {
      case '+':
        resultText = (num1 + num2).toString();
        break;
      case '-':
        resultText = (num1 - num2).toString();
        break;
      case '*':
        resultText = (num1 * num2).toString();
        break;
      case '/':
        resultText = (num1 / num2).toString();
        break;
    }
  }

  void onEqualClick(String _) {
    setState(() {
      if (savedNumber.isEmpty || resultText.isEmpty) return;
      calculate(savedNumber, savedOperator, resultText);
      savedNumber = '';
      savedOperator = '';
    });
  }

  void onResetClicked(String _) {
    resultText = '';
    savedNumber = '';
    savedOperator = '';
    setState(() {});
  }

  void onDotClicked(String _) {
    if (resultText.contains('.')) return;
    resultText += '.';
    setState(() {});
  }
}
