import 'package:bmi_starting/conponects/bottomButton.dart';
import 'package:flutter/material.dart';
import 'package:bmi_starting/constant.dart';
import 'package:bmi_starting/conponects/ReusFiles.dart';

class resultPage extends StatelessWidget {
  String result;
  String bmi;
  String interp;
  resultPage({required this.result,required this.bmi,required this.interp});

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
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusibleW(
                color: kactCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interp,
                      style: kBodyTextStyle,
                    ),
                  ],
                )),
          ),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            label: 'RECALCULATOR',
          ),
        ],
      ),
    );
  }
}
