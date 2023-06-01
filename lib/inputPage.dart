import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsContent.dart';
import 'ReusFiles.dart';
import 'constant.dart';
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
                    color: (selectGender== gender.male) ? kactCardColor: kinActiveCardColor,
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
                    color: (selectGender ==gender.female) ? kactCardColor: kinActiveCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            reusibleW(
              color: kactCardColor,
              child: Column(
                children: [
                  Text('HEIGHT',
                  style: klableStyle,)
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  reusibleW(
                    color: kactCardColor,
                  ),
                  reusibleW(
                    color: kactCardColor,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              color: kbottomContainerColor,
              margin: EdgeInsets.only(top: 15),
            )
          ],
        ));
  }
}




