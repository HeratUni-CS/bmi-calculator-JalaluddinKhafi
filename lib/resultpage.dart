import 'package:flutter/material.dart';
import 'package:bmi_starting/constant.dart';
import 'package:bmi_starting/ReusFiles.dart';
class resultPage extends StatelessWidget {

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
          Expanded(child: Container(
            margin: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleStyle,
            ),
            
          ),),
          Expanded(
            flex: 5,
              child: reusibleW(
                color: kactCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("NORMAL",
                    style: kResultTextStyle,
                    ),
                    Text("25",
                    style: kBMITextStyle,),
                    Text('You are goot to go',
                    style: kBodyTextStyle,),

                  ],
                )
              ),

          )
        ],
      ),
    );
  }
}
