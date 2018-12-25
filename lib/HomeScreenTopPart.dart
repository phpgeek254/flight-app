import 'package:airline_app/choice_chip.dart';
import 'package:airline_app/custom_shape_clipper.dart';
import 'package:flutter/material.dart';

class HomeScreenTopPart extends StatefulWidget {
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

Color firstGradientColor = Color(0xFFF47D15);
Color secondGradientColor = Color(0xFFEF772C);

List<String> locations = ['Boston (BS)', 'New York City (JFK)'];

TextStyle dropDownLabelStyle = TextStyle(color: Colors.white, fontSize: 16.0);

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedLocationIndex = 0;
  var flightIsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 400.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [firstGradientColor, secondGradientColor]),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50.0),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      PopupMenuButton(
                        onSelected: (index) {
                          setState(() {
                            selectedLocationIndex = index;
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                              PopupMenuItem(
                                child: Text(
                                  locations[0],
                                ),
                                value: 0,
                              ),
                              PopupMenuItem(
                                child: Text(
                                  locations[1],
                                ),
                                value: 1,
                              )
                            ],
                        child: Row(
                          children: <Widget>[
                            Text(
                              locations[selectedLocationIndex],
                              style: dropDownLabelStyle,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Where would \n you like to go?",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: TextField(
                        controller: TextEditingController(text: locations[1]),
                        decoration: InputDecoration(
                            suffixIcon: Material(
                              elevation: 2.0,
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 14),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        child: TopChoice(
                            Icons.flight_takeoff, 'Flights', flightIsSelected),
                        onTap: () {
                          setState(() {
                            flightIsSelected = true;
                          });
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: TopChoice(
                            Icons.hotel, 'Hotels', !flightIsSelected),
                        onTap: () {
                          setState(() {
                            flightIsSelected = false;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}


