import 'package:flutter/material.dart';


class reusibleW extends StatelessWidget {
  reusibleW({required this.color, this.child,this.onPressed});

  final Color color;
  final Widget? child;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: child,
        ),
      ),
    );
  }
}