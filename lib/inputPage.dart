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
              reusibleW(),
              reusibleW(),
            ],
          )),
          reusibleW(),
          Expanded(child: Row(
            children: [
             reusibleW(),
              reusibleW(),
            ],
          )),
        ],
      )
    );
  }
}

class reusibleW extends StatelessWidget {
  const reusibleW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF111428),
      ),
    ));
  }
}