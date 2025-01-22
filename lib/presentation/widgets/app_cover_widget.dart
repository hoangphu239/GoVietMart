import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_gradient.dart';
import 'package:hunty/theme/theme.dart';

class AppCoverWidget extends StatelessWidget {
  final bool isShowMenu;
  final String name;
  final double height;
  final BoxFit fit;

  const AppCoverWidget({
    super.key,
    required this.name,
    this.isShowMenu = false,
    this.fit = BoxFit.cover,
    this.height = Sizes.dimen_250,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: MediaQuery.of(context).size.width / height,
          child: Image.asset(name, fit: fit),
        ),
        AppGradient(height: height),
        Positioned(
          left: Sizes.dimen_10,
          right: Sizes.dimen_10,
          top: Sizes.dimen_16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  IconsConstant.back,
                  width: Sizes.dimen_20,
                  height: Sizes.dimen_15,
                  color: kColorWhite,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              isShowMenu ? IconButton(
                icon: SvgPicture.asset(
                  IconsConstant.threeDot,
                  width: Sizes.dimen_4,
                  height: Sizes.dimen_18,
                ),
                onPressed: () {
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(
                      MediaQuery.of(context).size.width,
                      Sizes.dimen_55,
                      Sizes.dimen_16,
                      0,
                    ),
                    items: [
                      PopupMenuItem(
                        value: 'save_promotion',
                        child: Text(
                          Languages.detailsPromotionPopupSave
                              .translator(context),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ).then(
                    (value) {
                      if (value == 'save_promotion') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              Languages.detailsPromotionSaveSuccess
                                  .translator(context),
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ): const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
