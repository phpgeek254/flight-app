import 'package:airline_app/CityListCard.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomPart extends StatelessWidget {
  final List<CityListCard> cityList = [
    CityListCard("assets/images/hw.jpg", "Huwaii", "April 2019", "20", "300", "250"),
    CityListCard("assets/images/la.jpg", "Los Angels", "March 2019", "10", "200", "150"),
    CityListCard("assets/images/ucla.jpg", "UCLA", "May 2019", "15", "400", "350"),
    CityListCard("assets/images/ucla.jpg", "UCLA", "May 2019", "15", "400", "350"),
    CityListCard("assets/images/la.jpg", "Los Angels", "March 2019", "10", "200", "150"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Currently watched items', style: TextStyle(color: Colors.black, fontSize: 16.0),),
              Text('VIEW ALL (12)', style: TextStyle(color: Colors.deepOrange, fontSize: 16.0),)
            ],
          ),
        ),
        Container(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cityList,
          ),
        )
      ],
    );
  }
}
