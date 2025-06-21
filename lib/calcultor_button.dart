import 'package:flutter/material.dart';

class CalcultorButton extends StatelessWidget {
  String text;
  void Function(String) onPressed;
  CalcultorButton({required this.text, required this.onPressed});

  Object? get resultText => null;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ElevatedButton(
            onPressed: () {
              onPressed(text);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(),
            ),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
