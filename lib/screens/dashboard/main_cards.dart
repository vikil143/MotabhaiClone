import 'package:flutter/material.dart';
import 'package:motabhai_clone/utils/colors.dart';

class MainCards extends StatefulWidget {
  @override
  _MainCardsState createState() => _MainCardsState();
}

class _MainCardsState extends State<MainCards> {
  // AnimationController controller;
  // Animation<double> animation;

  // @override
  // void initState() {
  //   super.initState();
  //   controller =
  //       new AnimationController(duration: Duration(seconds: 1), vsync: this)
  //         ..addListener(() => setState(() {}));

  //   // animation = Tween(begin: -widget.width, end: 0.0).animate(controller);
  //   controller.forward();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Container(
        decoration: BoxDecoration(
            color: orangeColor,
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }
}
