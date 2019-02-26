import 'package:airline_app/colors/colors.dart';
import 'package:airline_app/custom_shape_clipper.dart';
import 'package:flutter/material.dart';

class FlightListingTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:
              [firstGradientColor, secondGradientColor])
            ),
            height: 180,
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          margin: EdgeInsets.all(16.0),
          elevation: 10.0,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("BOSTON (BOS)",
                        style: TextStyle(
                          fontSize: 16.0
                        ),),
                      Divider( color: Colors.grey, height: 20,),
                      Text("New York City",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),)
                  ],),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                    child: Icon(Icons.import_export, color: Colors.black, size: 40,))
              ],
            ),
          ),
        )
      ],
    );
  }
}
