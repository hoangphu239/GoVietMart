import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/menu_model.dart';
import 'package:hunty/presentation/screen/profile/item_menu_profile_widget.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';

class ListMenuProfileWidget extends StatelessWidget {
  const ListMenuProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menus = getMenus();
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: menus.length,
      itemBuilder: (context, index) {
        return ItemMenuProfileWidget(
          itemMenu: menus[index],
          onPress: (id) {},
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: Sizes.dimen_26,
        child: AppDivider(),
      ),
    );
  }
}
