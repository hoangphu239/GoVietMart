import 'package:flutter/material.dart';
import 'package:hunty/theme/theme.dart';

class AppGradient extends StatelessWidget {
  final double height;
  final Color begin, end;

  const AppGradient({
    super.key,
    required this.height,
    this.begin = kColorBeginGradient,
    this.end = kColorEndGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            begin,
            end,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
