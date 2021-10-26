import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_flutter/components/round_icon_button.dart';

class Button_content extends StatefulWidget {
  Button_content({required this.label, this.defaultNumber = 0});
  String label;
  int defaultNumber;
  @override
  _Button_contentState createState() => _Button_contentState();
}

class _Button_contentState extends State<Button_content> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.label,
          style: kLabelTextStyle,
        ),
        Text(widget.defaultNumber.toString(), style: kNumberTextStyle),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    widget.defaultNumber--;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    widget.defaultNumber++;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
