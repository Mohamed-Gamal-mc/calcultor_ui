import 'package:calcultor_ui/calcultor_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        calcultorScreen.routeName: (_) => calcultorScreen(),
      },
      initialRoute: calcultorScreen.routeName,
    );
  }
}
