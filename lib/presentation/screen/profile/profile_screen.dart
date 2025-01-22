import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/user_model.dart';
import 'package:hunty/presentation/screen/profile/avatar_widget.dart';
import 'package:hunty/presentation/screen/profile/info_widget.dart';
import 'package:hunty/presentation/screen/profile/list_menu_profile_widget.dart';
import 'package:hunty/presentation/screen/profile/shop_management_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = getUser();
    return AppScaffold(
      statusBarColor: kColorYellow,
      statusBarIconBrightness: Brightness.light,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: Sizes.dimen_30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AvatarWidget(),
              InfoWidget(user: user),
              ShopManagementWidget(onPress: () {}),
              const ListMenuProfileWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
