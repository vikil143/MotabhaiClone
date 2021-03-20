import "package:flutter/material.dart";
import 'package:motabhai_clone/utils/colors.dart';
import 'package:motabhai_clone/utils/constants.dart';

class CircleIcon extends StatelessWidget {
  CircleIcon({this.child, this.padding, this.size});

  final Widget child;
  final EdgeInsets padding;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding != null ? padding : null,
      child: Center(child: child),
      width: size != null ? size : navbarIconSize,
      height: size != null ? size : navbarIconSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: whiteColor,
        boxShadow: [
          BoxShadow(
              color: greyColor.withOpacity(0.2),
              offset: const Offset(1, 1),
              blurRadius: 8)
        ],
      ),
    );
  }
}
