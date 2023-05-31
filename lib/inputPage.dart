import 'package:flutter/material.dart';

const bottomContainerColor= Color(0xFFEB1555);
const actCardColor =Color(0xFF111428);


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
          Expanded(child:Row(
            children: [
              reusibleW(color: actCardColor),
              reusibleW(color: actCardColor),
            ],
          )),
          reusibleW(color: actCardColor),
          Expanded(child: Row(
            children: [
             reusibleW(color: actCardColor),
              reusibleW(color: actCardColor),
            ],
          ),
          ),
          Container(
            height: 80,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 15),
          )
        ],
      )
    );
  }
}

class reusibleW extends StatelessWidget {

  reusibleW({required this.color});

final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color,
      ),
    ));
  }
}