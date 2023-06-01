import 'package:flutter/gestures.dart';
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
  int height=165;
  int weight=50;
  int age =20;
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',
                  style: klableStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                        style: knumberStyle,
                      ),
                      Text('cm',
                      style: klableStyle,
                      ),

                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      trackHeight: 1,
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      activeTickMarkColor: Colors.white,
                      inactiveTickMarkColor: Color(0xFF888993),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x3CEB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),

                      onChanged: (double value){
                        setState(() {
                          height=value.round();
                        });
                      },
                      min:120,
                      max: 220,

                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  reusibleW(
                    color: kactCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style: klableStyle,
                        ),
                        Text(
                          weight.toString(),
                        style: knumberStyle,

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RIconButton(iconData: Icons.add, onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },),
                            SizedBox(width: 10,),
                            RIconButton(
                              onPressed: (){
                                setState(() {
                                weight--;
                              });                                weight--;
                              },
                              iconData: Icons.remove,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  reusibleW(
                    color: kactCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: klableStyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberStyle,

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RIconButton(iconData: Icons.add, onPressed: (){
                              setState(() {
                                age++;
                              });
                            },),
                            SizedBox(width: 10,),
                            RIconButton(
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              iconData: Icons.remove,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              color: kbottomContainerColor,
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ));
  }
}
class RIconButton extends StatelessWidget {

  RIconButton({required this.iconData,required this.onPressed});
  final IconData iconData;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
    fillColor: const Color(0xFF1C1F32),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(iconData),

    );
  }
}




