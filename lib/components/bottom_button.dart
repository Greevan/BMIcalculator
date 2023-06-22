import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  final Function? onTap;
  final String custBottomButtonText;

  const BottomButton({required this.onTap, required this.custBottomButtonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      //     ()
      // {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => const ResultsPage()),
      //   );
      // },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kBottomContainerColor,
        ),
        margin: const EdgeInsets.only(top: 13),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            custBottomButtonText.toString(),
            style: kBottomText,
          ),
        ),
      ),
    );
  }
}