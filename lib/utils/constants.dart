import "package:flutter/material.dart";
import 'package:motabhai_clone/utils/colors.dart';

double appbarHeight = 70;
double navbarIconSize = 40;

String kdefaultFont = "Roboto";

BoxShadow whiteShadow = BoxShadow(
  color: whiteColor.withOpacity(0.6),
  blurRadius: 0.6,
);

TextStyle getAppRobotoFont({color, fontWeight, fontSize}) {
  return TextStyle(
      color: color,
      fontFamily: kdefaultFont,
      fontWeight: fontWeight,
      fontSize: fontSize);
}
