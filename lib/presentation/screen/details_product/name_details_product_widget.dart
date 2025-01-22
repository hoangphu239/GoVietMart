import 'package:flutter/cupertino.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class NameDetailsProductWidget extends StatelessWidget {
  final String name;

  const NameDetailsProductWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: Sizes.dimen_16,
        right: Sizes.dimen_16,
        top: Sizes.dimen_16,
      ),
      child: AppTextBold(
        text: name,
        textColor: kColorTextPrimary,
        textSize: Sizes.dimen_18,
      ),
    );
  }
}
