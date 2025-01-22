import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/notification_model.dart';
import 'package:hunty/presentation/screen/notification/item_notification_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_top_bar_yellow.dart';
import 'package:hunty/theme/theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = getListNotification();
    return AppScaffold(
      statusBarColor: kColorYellow,
      statusBarIconBrightness: Brightness.light,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarYellowWidget(title: Languages.notification),
            Padding(
              padding: const EdgeInsets.all(Sizes.dimen_20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return ItemNotificationWidget(
                      itemNotification: notifications[index]);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: Sizes.dimen_30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
