import 'package:flutter/material.dart';


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
        child: child,
      ),
    );
  }
}