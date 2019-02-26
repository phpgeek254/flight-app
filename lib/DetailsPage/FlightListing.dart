import 'package:airline_app/DetailsPage/FlightListingTopPart.dart';
import 'package:airline_app/DetailsPage/flight_listing_bottom_part.dart';
import 'package:flutter/material.dart';

class FlightListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Search Results"),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            FlightListingTopPart(),
            FlightListingBottomPart()
          ],
        ),
      ),
    );
  }
}
