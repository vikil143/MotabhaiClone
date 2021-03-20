import 'package:flutter/material.dart';
import 'package:motabhai_clone/utils/colors.dart';
import 'package:motabhai_clone/utils/constants.dart';

class WelComeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      alignment: Alignment.topLeft,
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Welcome ",
            style: TextStyle(
                fontFamily: kdefaultFont,
                color: primaryColor.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: "Motabhaai!!",
            style: TextStyle(
                fontFamily: kdefaultFont,
                color: primaryColor,
                fontSize: 21,
                fontWeight: FontWeight.w400))
      ])),
    );
  }
}
