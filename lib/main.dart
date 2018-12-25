import 'package:airline_app/HomeScreenBottomPart.dart';
import 'package:flutter/material.dart';
import './HomeScreenTopPart.dart';
void main() => runApp(
  MaterialApp(title: "ER-Flights",
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
  theme: themeData,),

);

ThemeData themeData = ThemeData(
primaryColor: Color(0xFFF3791A)
);


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:(Column(
        children: <Widget>[
        HomeScreenTopPart(),
        HomeScreenBottomPart()
        ],
      )),);
  }
}

