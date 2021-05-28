import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';

class BottumButton extends StatelessWidget {
  BottumButton({this.btnText, this.onTap});
  final String btnText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              btnText,
              style: kBottumBtnText,
            ),
          ),
        ),
        color: kBottumColor,
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: kBottumcontainerwidth,
      ),
    );
  }
}
