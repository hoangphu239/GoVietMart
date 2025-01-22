import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';
import 'package:hunty/theme/theme.dart';

class FilterDistanceWidget extends StatefulWidget {
  const FilterDistanceWidget({super.key});

  @override
  State<FilterDistanceWidget> createState() => _FilterDistanceWidgetState();
}

class _FilterDistanceWidgetState extends State<FilterDistanceWidget> {
  late TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    searchController = TextEditingController(
        text: Languages.searchDistanceFromYou.translator(context));
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
              suffixIcon: IconButton(
                icon: SvgPicture.asset(
                  IconsConstant.dropdown,
                  width: Sizes.dimen_10,
                  height: Sizes.dimen_8,
                ),
                onPressed: () {},
              ),
              onDropdownPressed: () {},
            ),
          ),
        ),
        const SizedBox(width: Sizes.dimen_15),
        Container(
          width: Sizes.dimen_40,
          height: Sizes.dimen_40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: kColorGrayBorder,
              width: Sizes.dimen_1,
            ),
            borderRadius: BorderRadius.circular(Sizes.dimen_4),
          ),
          child: IconButton(
            icon: SvgPicture.asset(IconsConstant.navigation),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
