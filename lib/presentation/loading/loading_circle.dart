import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:hunty/theme/theme.dart';

class LoadingCircle extends StatelessWidget {

  const LoadingCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: FlareActor(
        'assets/animations/loading_circle.flr',
        animation: 'load',
        snapToEnd: true,
        color: kColorYellow,
      ),
    );
  }
}
