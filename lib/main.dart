import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

import 'bmi_calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculatorScreen(),
    );
}

}
