import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? custIcon;
  final Function? onPressed;

  const RoundIconButton({required this.custIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed as void Function()?,
      shape: const CircleBorder(),
      elevation: 2.0,
      constraints: const BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      fillColor: const Color(0xFF848486),
      child: Icon(custIcon),
    );
  }
}
