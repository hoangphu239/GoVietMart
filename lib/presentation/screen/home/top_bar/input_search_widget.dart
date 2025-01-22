import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';
import 'package:hunty/theme/theme.dart';


class InputSearchWidget extends StatefulWidget {
  const InputSearchWidget({super.key});

  @override
  State<InputSearchWidget> createState() => _InputSearchWidgetState();
}

class _InputSearchWidgetState extends State<InputSearchWidget> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController(text: 'Ho Chi Minh City');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: Sizes.dimen_40,
            child: SearchBarTextField(
              controller: searchController,
              readOnly: true,
              prefix: const Icon(
                Icons.location_on,
                size: Sizes.dimen_29,
                color: kColorYellow,
              ),
              suffixIcon:  IconButton(
                icon: SvgPicture.asset(
                  IconsConstant.dropdown,
                  width: Sizes.dimen_10,
                  height: Sizes.dimen_8,
                ),
                onPressed: () { },
              ),
              onDropdownPressed: () {},
            ),
          ),
        ),
        const SizedBox(width: Sizes.dimen_5),
        IconButton(
          icon: SvgPicture.asset(
            IconsConstant.search,
            width: Sizes.dimen_24,
            height: Sizes.dimen_24,
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pushNamed(RouteList.search);
          },
        ),
      ],
    );
  }
}
