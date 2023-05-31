import 'package:flutter/material.dart';




class IconContent extends StatelessWidget {
  IconContent({required this.iconData, required this.label});
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 70,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFF868892),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}