import 'package:flutter/material.dart';
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
              reusibleW(color: Color(0xFF111428)),
              reusibleW(color: Color(0xFF111428)),
            ],
          )),
          reusibleW(color: Color(0xFF111428)),
          Expanded(child: Row(
            children: [
             reusibleW(color: Color(0xFF111428)),
              reusibleW(color: Color(0xFF111428)),
            ],
          )),
        ],
      )
    );
  }
}

class reusibleW extends StatelessWidget {

  reusibleW({required this.color});

Color color;

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