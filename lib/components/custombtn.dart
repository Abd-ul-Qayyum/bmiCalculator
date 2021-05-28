import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}