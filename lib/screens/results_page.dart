

import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/rebottumbtn.dart';
import 'package:bmi_calculator/components/reuseablecard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText, this.interpretations});
  final String bmiResult;
  final String resultText;
  final String interpretations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Expanded(
              child: Container(
                child: Text(
                  "Your Results",
                  style: kTitleText,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReuseableCard(
                colour: kInActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: KResultText,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiText,
                    ),
                    Text(
                      interpretations,
                      textAlign: TextAlign.center,
                      style: kBmiBodyText,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottumButton(
            btnText: "Go Back",
            onTap: () {
              Navigator.pop(
                context,
              );
            },
          ),
        ],
      ),
    );
  }
}
