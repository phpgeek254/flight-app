import 'package:flutter/material.dart';

class CityListCard extends StatelessWidget {
  final String imagePath, cityName, date, discount, oldPrice, newPrice;

  CityListCard(this.imagePath, this.cityName, this.date, this.discount,
      this.oldPrice, this.newPrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 210.0,
              width: 160.0,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            Positioned(
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
            ),
            Positioned(
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
            ),
          ],
        ),
      ),
    );
  }
}
