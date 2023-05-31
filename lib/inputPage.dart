import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const bottomContainerColor = Color(0xFFEB1555);
const actCardColor = Color(0xFF111428);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                reusibleW(color: actCardColor,
                  child: Column(
                    children: [
                      Icon(FontAwesomeIcons.mars)
                    ],
                  ),

                ),
                reusibleW(color: actCardColor,

                ),
              ],
            ),
            ),
            reusibleW(color: actCardColor,
              child: Column(
                children: [

                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  reusibleW(color: actCardColor,

                  ),
                  reusibleW(color: actCardColor,

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

class reusibleW extends StatelessWidget {
  reusibleW({required this.color, this.child});

  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child:child ,
      ),
    );
  }
}
