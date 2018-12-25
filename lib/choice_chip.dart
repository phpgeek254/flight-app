import 'package:flutter/material.dart';

class TopChoice extends StatefulWidget {
  final IconData icon;
  final String text;
  final isSelected;

  TopChoice(this.icon, this.text, this.isSelected);

  @override
  _TopChoice createState() => _TopChoice();
}

class _TopChoice extends State<TopChoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: widget.isSelected
          ? BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            color: Colors.white,
            size: 25.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            widget.text,
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
