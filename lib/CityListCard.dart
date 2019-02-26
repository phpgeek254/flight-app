import 'package:flutter/material.dart';

class CityListCard extends StatelessWidget {
  final String imagePath, cityName, date, discount, oldPrice, newPrice;

  CityListCard(this.imagePath, this.cityName, this.date, this.discount,
      this.oldPrice, this.newPrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                // Build background image:
                buildCardBackGround(),
                buildBottomGradient(),
                buildCityTextContainer(),
              ]
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 5.0,),
              Text("Ksh.$newPrice",
                style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 8.0,),
              Text(
                "(Ksh.$oldPrice)",
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey
                ),
              )
            ],
          )
        ],
      )
    );
  }

  Positioned buildCityTextContainer() {
    return Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(cityName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                      Text(date, style: TextStyle(fontSize: 10,  color: Colors.white),)
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                    child: Text("$discount%", style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
          );
  }

  Positioned buildBottomGradient() {
    return Positioned(
            bottom: 0,
            left: 0,
            width: 160,
            height: 60,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.black.withOpacity(0.2)])),
            ),
          );
  }

  Container buildCardBackGround() {
    return Container(
            height: 210.0,
            width: 180.0,
            child: Image.asset(imagePath, fit: BoxFit.cover),
          );
  }
}
