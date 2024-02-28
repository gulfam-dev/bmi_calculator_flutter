import 'package:bmi_calculator_flutter/bottom_button.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'resuable_card.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({super.key,
  required this.bmiResult,required this.resultText,required this.interpretation,});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: ResuableCard(
                childCard:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 90,
                      ),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
                color: activeCardColor,
              )),
          BottomButton(
            buttonText: 'Calculate Your BMI',
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>InputPage()));
            },
          ),
        ],
      ),
    );
  }
}
