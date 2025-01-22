import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/user_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/presentation/widgets/app_view_rating.dart';
import 'package:hunty/theme/theme.dart';

class InfoWidget extends StatelessWidget {
  final UserModel user;

  const InfoWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
      child: Column(
        children: [
          Column(
            children: [
              AppTextBold(
                text: user.name,
                textSize: Sizes.dimen_18,
                alignment: Alignment.center,
              ),
              const SizedBox(height: Sizes.dimen_5,),
              AppTextNormal(
                text: showFollow(user),
                textSize: Sizes.dimen_14,
                alignment: Alignment.center,
              ),
              const SizedBox(height: Sizes.dimen_5,),
              AppViewRating(
                rating: user.rating,
                alignment: MainAxisAlignment.center,
              ),
            ],
          ),
          const SizedBox(height: Sizes.dimen_10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppTextNormal(
                text: Languages.email,
                textColor: kColorTextSecondary,
                textSize: Sizes.dimen_16,
              ),
              AppTextNormal(
                text: user.email,
                textColor: kColorTextPrimary,
                textSize: Sizes.dimen_16,
              ),
            ],
          ),
          const SizedBox(
            height: Sizes.dimen_10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppTextNormal(
                text: Languages.mobileNumber,
                textColor: kColorTextSecondary,
                textSize: Sizes.dimen_16,
              ),
              AppTextNormal(
                text: user.phone,
                textColor: kColorTextPrimary,
                textSize: Sizes.dimen_16,
              ),
            ],
          ),
          const SizedBox(
            height: Sizes.dimen_10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppTextNormal(
                text: Languages.yearOfBirth,
                textColor: kColorTextSecondary,
                textSize: Sizes.dimen_16,
              ),
              AppTextNormal(
                text: user.yearOfBirth,
                textColor: kColorTextPrimary,
                textSize: Sizes.dimen_16,
              ),
            ],
          )
        ],
      ),
    );
  }
}

String showFollow(UserModel user) {
  String template = "%s Followers | %s Following";
  return template.format([user.follower, user.following]);
}

extension StringFormatter on String {
  String format(List<Object> args) {
    var formattedString = this;
    for (var i = 0; i < args.length; i++) {
      formattedString = formattedString.replaceFirst('%s', args[i].toString());
    }
    return formattedString;
  }
}
