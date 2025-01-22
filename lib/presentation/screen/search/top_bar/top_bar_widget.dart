import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';
import 'package:hunty/theme/theme.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({super.key});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Sizes.dimen_40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              IconsConstant.back,
              width: Sizes.dimen_20,
              height: Sizes.dimen_15,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(width: Sizes.dimen_5),
          Expanded(
              child: SearchBarTextField(
            controller: searchController,
            hintText: 'Search for Brand, Promotion...',
            readOnly: false,
            prefix: null,
            suffixIcon: IconButton(
              icon: SvgPicture.asset(
                IconsConstant.search,
                width: Sizes.dimen_20,
                height: Sizes.dimen_20,
                color: kColorGraySecondary,
              ),
              onPressed: () {},
            ),
            onDropdownPressed: () {},
          )),
          const SizedBox(width: Sizes.dimen_5),
          IconButton(
            icon: SvgPicture.asset(
              IconsConstant.menu,
              width: Sizes.dimen_20,
              height: Sizes.dimen_16,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
