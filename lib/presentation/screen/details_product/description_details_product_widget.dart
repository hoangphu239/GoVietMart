import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/details_product/expandable_text_widget.dart';
import 'package:hunty/theme/theme.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class DescriptionDetailsProductWidget extends StatelessWidget {
  final String html;

  const DescriptionDetailsProductWidget({super.key, required this.html});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: Sizes.dimen_16,
        right: Sizes.dimen_16,
        bottom: Sizes.dimen_10,
      ),
      child: html.length > 600
          ? ExpandableTextWidget(
              fullDescription: html,
              shortDescription: html.substring(0, 600),
            )
          : HtmlWidget(
              html,
              textStyle: PrimaryFont.regular(Sizes.dimen_16),
            ),
    );
  }
}
