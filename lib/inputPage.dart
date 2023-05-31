import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsContent.dart';
import 'ReusFiles.dart';
const bottomContainerColor = Color(0xFFEB1555);
const actCardColor = Color(0xFF111428);
const inActiveCardColor=Color(0xFF1D1F33);
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor=inActiveCardColor;
  Color femaleColor=inActiveCardColor;
  void genderSelected(int i) {
    if (i == 1) {
      maleColor = actCardColor;
      femaleColor = inActiveCardColor;
    } else {
      maleColor = inActiveCardColor;
      femaleColor = actCardColor;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  reusibleW(
                    onPressed: (){
                      print('male selected');
                    },
                    color: inActiveCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                  reusibleW(
                    color: inActiveCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            reusibleW(
              color: actCardColor,
              child: Column(
                children: [],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  reusibleW(
                    color: actCardColor,
                  ),
                  reusibleW(
                    color: actCardColor,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 15),
            )
          ],
        ));
  }
}




