import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';

class DiagonalClipper extends CustomClipper<Path> {
  final double width;
  DiagonalClipper({required this.width});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, width/2);
    path.lineTo(width/2 - Sizes.dimen_50, width/2 - Sizes.dimen_50);
    path.lineTo(width/2, 0);
    path.lineTo(Sizes.dimen_50, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}