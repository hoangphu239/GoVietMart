import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/details_product/animated_expanding_container.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String fullDescription, shortDescription;

  const ExpandableTextWidget({
    super.key,
    required this.fullDescription,
    required this.shortDescription,
  });

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool _isExpanded = false;

  Widget expandableText(bool isExpanded) {
    return Stack(
      children: [
        HtmlWidget(
          isExpanded ? widget.fullDescription : widget.shortDescription,
          textStyle: PrimaryFont.regular(Sizes.dimen_16),
        ),
        !_isExpanded ? Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: Sizes.dimen_300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.white,
                ],
              ),
            ),
          ),
        ) : const SizedBox.shrink(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedExpandingContainer(
          isExpanded: _isExpanded,
          expandedWidget: expandableText(true),
          unexpandedWidget: expandableText(false),
        ),
        const SizedBox(
          height: Sizes.dimen_12,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: !_isExpanded
              ? const AppTextNormal(
                  text: Languages.viewAll,
                  alignment: Alignment.center,
                  textSize: Sizes.dimen_16,
                  textColor: kColorYellow,
                )
              : const AppTextNormal(
                  text: Languages.showLess,
                  alignment: Alignment.center,
                  textSize: Sizes.dimen_16,
                  textColor: kColorYellow,
                ),
        ),
      ],
    );
  }
}
