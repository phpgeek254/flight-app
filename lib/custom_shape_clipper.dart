import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height);
    
    var firstEndPoint = Offset(size.width * .5, size.height-50.0);
    var firstControlPoint = Offset(size.width * 0.17, size.height - 70.0);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * .75, size.height - 30);
    var secondEndPoint = Offset(size.width, size.height - 120);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;

}