import 'package:flutter/material.dart';


class RIconButton extends StatelessWidget {
  RIconButton({required this.iconData, required this.onPressed});
  final IconData iconData;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
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
