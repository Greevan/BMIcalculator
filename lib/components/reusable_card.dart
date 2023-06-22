import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? custColor;
  final Widget? cardChild;
  final Function? onPress;

  ReusableCard({required this.custColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: custColor,
        ),
        height: 200.00,
        width: 150.00,
        child: cardChild,
      ),
    );
  }
}
