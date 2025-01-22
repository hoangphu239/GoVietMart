import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/feed/feed_screen.dart';
import 'package:hunty/presentation/screen/home/home_screen.dart';
import 'package:hunty/presentation/screen/notification/notification_screen.dart';
import 'package:hunty/presentation/screen/profile/profile_screen.dart';
import 'package:hunty/presentation/screen/scan_qr/scan_qr_screen.dart';
import 'package:hunty/theme/theme.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late PersistentTabController controller;

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const FeedScreen(),
      const ScanQRScreen(),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        iconSize: Sizes.dimen_29,
        title: (Languages.dashboardHomeTitle.translator(context)),
        textStyle: PrimaryFont.regular(Sizes.dimen_14),
        activeColorPrimary: kColorYellow,
        inactiveColorPrimary: kColorTextBottomBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.feed),
        iconSize: Sizes.dimen_29,
        title: (Languages.dashboardFeedTitle.translator(context)),
        textStyle: PrimaryFont.regular(Sizes.dimen_14),
        activeColorPrimary: kColorYellow,
        inactiveColorPrimary: kColorTextBottomBar,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          IconsConstant.qrcode,
          width: Sizes.dimen_28,
          height: Sizes.dimen_28,
        ),
        title: (Languages.dashboardScanQRTitle.translator(context)),
        textStyle: PrimaryFont.regular(Sizes.dimen_14),
        activeColorPrimary: kColorYellow,
        inactiveColorPrimary: kColorTextBottomBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.notifications),
        iconSize: Sizes.dimen_29,
        title: (Languages.dashboardNotificationTitle.translator(context)),
        textStyle: PrimaryFont.regular(Sizes.dimen_14),
        activeColorPrimary: kColorYellow,
        inactiveColorPrimary: kColorTextBottomBar,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_circle),
        iconSize: Sizes.dimen_29,
        title: (Languages.dashboardProfileTitle.translator(context)),
        textStyle: PrimaryFont.regular(Sizes.dimen_14),
        activeColorPrimary: kColorYellow,
        inactiveColorPrimary: kColorTextBottomBar,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      navBarHeight: Sizes.dimen_63,
      padding: const EdgeInsets.symmetric(vertical: Sizes.dimen_6),
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kColorTextBottomBar.withOpacity(0.3),
            spreadRadius: Sizes.dimen_3,
            blurRadius: Sizes.dimen_5,
            offset: const Offset(Sizes.dimen_0, Sizes.dimen_3),
          ),
        ],
      ),
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.once,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 300),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
        onNavBarHideAnimation: OnHideAnimationSettings(
          duration: Duration(milliseconds: 100),
          curve: Curves.bounceInOut,
        ),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
