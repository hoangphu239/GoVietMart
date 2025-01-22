import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: Sizes.dimen_8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 60,
          color: kColorWhite,
          child: Row(
            children: [
              navItem(
                Icons.home_outlined,
                'Home',
                pageIndex == 0,
                onTap: () => onTap(0),
              ),
              navItem(
                Icons.feed_outlined,
                'Feed',
                pageIndex == 1,
                onTap: () => onTap(1),
              ),
              const SizedBox(width: 80),
              navItem(
                Icons.notifications_none_outlined,
                'Notification',
                pageIndex == 2,
                onTap: () => onTap(2),
              ),
              navItem(
                Icons.person_outline,
                'Profile',
                pageIndex == 3,
                onTap: () => onTap(3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, String title, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Icon(
              icon,
              color: selected ? kColorYellow : kColorGrayShadow,
            ),
            AppTextNormal(text: title)
          ]
        ),
      ),
    );
  }
}