import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/input_page.dart';


void main() => runApp(const BMICalculator());


class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const InputPage(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF111428),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF111428),
          ),
        ));
  }
}

