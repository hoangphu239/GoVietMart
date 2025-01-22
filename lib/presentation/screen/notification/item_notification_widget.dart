import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/notification_model.dart';
import 'package:hunty/presentation/screen/notification/item_description_widget.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemNotificationWidget extends StatelessWidget {
  final NotificationModel itemNotification;

  const ItemNotificationWidget({
    super.key,
    required this.itemNotification,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextNormal(
          text: itemNotification.date,
          textSize: Sizes.dimen_14,
          textColor: kColorTextSecondary,
        ),
        const SizedBox(height: Sizes.dimen_16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: itemNotification.descriptions.length,
          itemBuilder: (_, int index) => ItemDescriptionWidget(
              itemDescription: itemNotification.descriptions[index]),
        ),
      ],
    );
  }
}
