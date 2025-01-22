import 'package:flutter/material.dart';
import 'package:hunty/presentation/screen/search/tabview/tabview_widget.dart';
import 'package:hunty/presentation/screen/search/top_bar/top_bar_widget.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/theme/theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      statusBarColor: kColorWhite,
      statusBarIconBrightness: Brightness.dark,
      child: AppPadding(
        child: Column(
          children: [
            TopBarWidget(),
            Expanded(child: TabViewWidget()),
          ],
        ),
      ),
    );
  }
}
