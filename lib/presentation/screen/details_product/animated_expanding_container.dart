import 'package:flutter/material.dart';

class AnimatedExpandingContainer extends StatelessWidget {
  const AnimatedExpandingContainer({
    super.key,
    required this.unexpandedWidget,
    required this.expandedWidget,
    required this.isExpanded,
  });

  final Widget unexpandedWidget;
  final Widget expandedWidget;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    // you can change the duration and add Curve to make more smoother tranition
    return AnimatedCrossFade(
      firstCurve: Curves.linear,
      secondCurve: Curves.linear,
      firstChild: unexpandedWidget,
      secondChild: expandedWidget,
      crossFadeState:
          !isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 800),
    );
  }
}
