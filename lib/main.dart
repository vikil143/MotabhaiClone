import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motabhai_clone/screens/dashboard/dashboard_screen.dart';
import 'package:motabhai_clone/utils/colors.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: Colors.white, systemNavigationBarColor: whiteColor));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: DashboardScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
