import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsContent.dart';
import 'ReusFiles.dart';
const bottomContainerColor = Color(0xFFEB1555);
const actCardColor = Color(0xFF111428);
const inActiveCardColor=Color(0xFF1D1F33);
enum gender{
  male,
female,
}


class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  gender? selectGender;

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
                      setState(() {
                        selectGender= gender.male;
                      });
                    },
                    color: (selectGender== gender.male) ? actCardColor: inActiveCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                  reusibleW(
                    onPressed: (){
                      setState(() {
                        selectGender=gender.female;
                      });
                    },
                    color: (selectGender ==gender.female) ? actCardColor: inActiveCardColor,
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




