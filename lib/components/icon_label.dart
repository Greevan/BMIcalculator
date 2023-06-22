import 'package:flutter/material.dart';
import '../constants.dart';


class IconLabel extends StatelessWidget {
  final IconData? custIcon;
  final String label;

  const IconLabel({
    this.custIcon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          custIcon,
          size: 90,
        ),
        const SizedBox(height: 25),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}