import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hunty/presentation/widgets/app_top_bar.dart';
import 'package:hunty/theme/theme.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final bool resizeToAvoidBottomInset;
  final Color statusBarColor;
  final Brightness statusBarIconBrightness;
  final String? titleScreen;

  const AppScaffold({
    super.key,
    this.titleScreen,
    this.statusBarColor = kColorWhite,
    this.resizeToAvoidBottomInset = false,
    this.statusBarIconBrightness = Brightness.dark,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
      ),
      child: Scaffold(
        appBar: titleScreen != null
            ? AppTopBar(
                title: titleScreen!,
                backPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: kColorWhite,
        body: child,
      ),
    );
  }
}
