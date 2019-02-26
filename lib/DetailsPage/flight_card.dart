import 'package:airline_app/colors/colors.dart';
import 'package:flutter/material.dart';

class FlightCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: flightBorderColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("\$4,159.00",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(width: 10,),
                      Text("(\$9999.00)",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough
                      ),),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Wrap(
                    spacing: 8,
                    children: <Widget>[
                      _buildFlightDetailChip(Icons.calendar_today, 'June 2019'),
                      _buildFlightDetailChip(Icons.flight_takeoff, 'Jet Airways'),
                      _buildFlightDetailChip(Icons.star, '4.4'),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: -12,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text("55%", style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: themeData.primaryColor
              ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: discountBackgroundColor
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlightDetailChip(IconData iconData, String label) {
    return RawChip(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      label: Text(label),
      labelStyle: TextStyle(color: Colors.black, fontSize: 14),
      backgroundColor: chipBackgroundColor,
      avatar: Icon(iconData),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}
