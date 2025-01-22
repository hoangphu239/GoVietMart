import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_radio.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  String _selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(kColorTextSecondary),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextNormal(
              text: Languages.signUpGender.translator(context),
              textSize: Sizes.dimen_16,
            ),
            Row(
              children: [
                AppRadio(
                  value: Languages.signUpMale.translator(context),
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                  activeColor: kColorYellow,
                  borderWidth: Sizes.dimen_1,
                ),
                const SizedBox(width: Sizes.dimen_6),
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedGender = Languages.signUpMale.translator(context);
                    });
                  },
                  child:  AppTextNormal(
                    text: Languages.signUpMale.translator(context),
                    textSize: Sizes.dimen_16,
                  ),
                )
              ],
            ),
            Row(
              children: [
                AppRadio(
                  value: Languages.signUpFemale.translator(context),
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = Languages.signUpFemale.translator(context);
                    });
                  },
                  activeColor: kColorYellow,
                  borderWidth: Sizes.dimen_1,
                ),
                const SizedBox(width: Sizes.dimen_6),
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedGender = Languages.signUpFemale.translator(context);
                    });
                  },
                  child:  AppTextNormal(
                    text: Languages.signUpFemale.translator(context),
                    textSize: Sizes.dimen_16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
