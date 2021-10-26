import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonTitle, required this.onTap})
      : super(key: key);

  final String buttonTitle;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(top: 10, bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
          "$buttonTitle",
          style: kLargeButtonTextStyle,
        )),
      ),
    );
  }
}
