import 'package:airline_app/CustomAppBar.dart';
import 'package:airline_app/HomeScreenBottomPart.dart';
import 'package:airline_app/colors/colors.dart';
import 'package:flutter/material.dart';
import './HomeScreenTopPart.dart';
void main() => runApp(
  MaterialApp(title: "ER-Flights",
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
  theme: themeData,),
);




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar(),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: (
            Column(
          children: <Widget>[
          HomeScreenTopPart(),
          HomeScreenBottomPart(),
          HomeScreenBottomPart(),
          HomeScreenBottomPart(),
          HomeScreenBottomPart(),
          HomeScreenBottomPart(),
          ],
        )),
      ),);
  }
}

