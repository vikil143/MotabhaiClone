import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';

List arrayOfDate = [
  1,
  2,
  3,
  4,
  5,
  6,
];

class DateSliderTwo extends StatefulWidget {
  @override
  _DateSliderTwoState createState() => _DateSliderTwoState();
}

class _DateSliderTwoState extends State<DateSliderTwo> {
  List<int> data = [];
  int _focusedIndex = 0;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 30; i++) {
      data.add(Random().nextInt(100) + 1);
    }
  }

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildItemDetail() {
    if (data.length > _focusedIndex)
      return Container(
        height: 150,
        child: Text("index $_focusedIndex: ${data[_focusedIndex]}"),
      );

    return Container(
      height: 150,
      child: Text("No Data"),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    //horizontal
    return Container(
      width: 35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: data[index].toDouble() * 2,
            width: 25,
            color: Colors.lightBlueAccent,
            child: Text("i:$index\n${data[index]}"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double slideWidth = MediaQuery.of(context).size.width / 7;
    // return Container();

    return Container(
      height: 50,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 50,
            height: 50,
            color: Colors.redAccent,
            margin: EdgeInsets.only(right: 10),
          );
        },
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
      ),
    );

    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          margin: EdgeInsets.only(right: 10),
          color: Colors.redAccent,
        ),
        Container(
          width: 80,
          margin: EdgeInsets.only(right: 10),
          color: Colors.redAccent,
        ),
        Container(
          width: 80,
          margin: EdgeInsets.only(right: 10),
          color: Colors.redAccent,
        ),
      ],
    );

    return Expanded(
        child: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 50,
          height: 50,
          color: Colors.redAccent,
          margin: EdgeInsets.only(right: 10),
        );
      },
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
    ));
    // ScrollSnapList(
    //   onItemFocus: _onItemFocus,
    //   itemSize: 35,
    //   itemBuilder: _buildListItem,
    //   itemCount: data.length,
    //   reverse: true,
    // ),
    // _buildItemDetail(),
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: <Widget>[
    //     RaisedButton(
    //       child: Text("Add Item"),
    //       onPressed: () {
    //         setState(() {
    //           data.add(Random().nextInt(100) + 1);
    //         });
    //       },
    //     ),
    //     RaisedButton(
    //       child: Text("Remove Item"),
    //       onPressed: () {
    //         int index =
    //             data.length > 1 ? Random().nextInt(data.length - 1) : 0;
    //         setState(() {
    //           data.removeAt(index);
    //         });
    //       },
    //     ),
    //   ],
    // )
    //   ],
    // );
  }
}
