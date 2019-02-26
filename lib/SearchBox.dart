import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  final List<String> locations;
  SearchBox(this.locations);
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  get locations => locations;

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
    );
  }
}
