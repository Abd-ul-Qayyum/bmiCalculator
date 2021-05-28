import 'package:flutter/material.dart';
import 'constants.dart';

class CardBody extends StatelessWidget {
  CardBody({this.bodyText, this.bodyIcon});

  final IconData bodyIcon;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          bodyIcon,
          size: 80.0,
        ),
        Text(
          bodyText,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
