import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/notification_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemDescriptionWidget extends StatelessWidget {
  final DescriptionNotificationModel itemDescription;

  const ItemDescriptionWidget({
    super.key,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: itemDescription.isFirst
          ? nodeFirst(itemDescription.isTimeAgo, itemDescription.description)
          : nodeNext(itemDescription.isTimeAgo, itemDescription.description),
    );
  }
}

Widget nodeFirst(bool isTimeAgo, String description) {
  return Row(
    children: [
      Container(
        width: Sizes.dimen_10,
        height: Sizes.dimen_10,
        decoration: BoxDecoration(
          color: isTimeAgo ? kColorYellow : kColorGrayPrimary,
          shape: BoxShape.circle,
        ),
      ),
      const SizedBox(width: Sizes.dimen_10),
      textDescription(isTimeAgo, description)
    ],
  );
}

Widget nodeNext(bool isTimeAgo, String description) {
  return SizedBox(
    height: Sizes.dimen_50,
    child: Stack(
      children: [
        Positioned(
          left: 0,
          child: Container(
            height: Sizes.dimen_50,
            width: Sizes.dimen_10,
            padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_2),
            child: Container(
              color: kColorGrayBorder,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Row(
            children: [
              Container(
                width: Sizes.dimen_10,
                height: Sizes.dimen_10,
                decoration: BoxDecoration(
                  color: isTimeAgo ? kColorYellow : kColorGrayPrimary,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: Sizes.dimen_10),
              textDescription(isTimeAgo, description)
            ],
          ),
        ),
      ],
    ),
  );
}

Widget textDescription(bool isTimeAgo, String description) {
  return isTimeAgo
      ? AppTextBold(text: description, textSize: Sizes.dimen_14)
      : AppTextNormal(text: description, textSize: Sizes.dimen_14);
}
