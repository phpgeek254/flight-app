import 'package:airline_app/DetailsPage/flight_card.dart';
import 'package:airline_app/text_styles/text_styles.dart';
import 'package:flutter/material.dart';


class FlightListingBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Best Deals for  Next 6 Months",
          style: titleTextStyle,),
          SizedBox(height: 10,),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              FlightCard(),
              FlightCard(),
              FlightCard(),
              FlightCard(),
              FlightCard(),
              FlightCard(),
            ],
          )

        ],
      ),
    );
  }
}
