import "package:flutter/material.dart";
import 'package:motabhai_clone/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {@required this.leftAction,
      @required this.centerAction,
      @required this.rightAction,
      this.rightFlex});

  final Widget leftAction;
  final Widget centerAction;
  final Widget rightAction;
  final int rightFlex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: navbarIconSize + 28,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Flexible(
              child: leftAction,
              flex: 2,
            ),
            Flexible(
              child: centerAction,
              flex: 8,
            ),
            Flexible(
              child: rightAction,
              flex: rightFlex != null ? rightFlex : 2,
            )
          ],
        ),
      ),
    );
  }
}
