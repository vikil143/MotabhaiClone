import "package:flutter/material.dart";

// cust packages
import 'package:motabhai_clone/comp/circle_icon.dart';
import "package:motabhai_clone/comp/custom_appbar.dart";
import 'package:motabhai_clone/comp/date_slider.dart';
import 'package:motabhai_clone/screens/dashboard/main_cards.dart';
import 'package:motabhai_clone/screens/dashboard/welcome_text.dart';
import 'package:motabhai_clone/utils/colors.dart';
import 'package:motabhai_clone/utils/constants.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> listViews = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addListViewItems();
  }

  void addListViewItems() {
    listViews.add(WelComeText());
    listViews.add(SizedBox(
      height: 10,
    ));
    listViews.add(searchRow());
    listViews.add(MainCards());
    listViews.add(DateSliderTwo());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Stack(children: [
          CustomAppBar(
            leftAction: CircleIcon(
              child: Container(),
            ),
            centerAction: Container(),
            rightFlex: 8,
            rightAction: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleIcon(child: Container()),
                CircleIcon(
                  child: Container(),
                ),
                CircleIcon(child: Container()),
              ],
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.only(
              top: navbarIconSize + 30,
            ),
            itemBuilder: (BuildContext context, int index) {
              return listViews[index];
            },
            itemCount: listViews.length,
          )
          // WelComeText(),
          // searchRow(),
          // MainCards()
        ]),
        color: whiteColor,
      ),
    ));
  }
}

Widget searchRow() {
  return Container(
    padding: EdgeInsets.only(left: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "here is your dashboard....",
          style: TextStyle(
              fontSize: 12,
              fontFamily: kdefaultFont,
              color: primaryColor.withOpacity(0.8),
              fontWeight: FontWeight.w400),
        ),
        Container(
          child: InkWell(
            onTap: () {
              print("Search tab");
            },
            child: CircleIcon(
                child: Image.asset(
                  "assets/icons/search_icon.png",
                  width: 24,
                  height: 24,
                ),
                size: 55),
          ),
        ),
      ],
    ),
  );
}
