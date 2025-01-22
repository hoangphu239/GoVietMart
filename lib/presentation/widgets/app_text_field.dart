import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/theme/theme.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputAction action;
  final TextInputType? inputType;
  final String? suffixIcon;
  final bool? isReadOnly;
  final Function()? onIconPressed;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.action = TextInputAction.done,
    this.inputType = TextInputType.text,
    this.suffixIcon,
    this.onIconPressed,
    this.isReadOnly = false,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      readOnly: widget.isReadOnly!,
      style: PrimaryFont.regular(Sizes.dimen_16)
          .copyWith(color: kColorTextPrimary),
      textInputAction: widget.action,
      keyboardType: widget.inputType,
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: kColorWhite,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: kColorGrayPrimary,
              width: Sizes.dimen_1), // Màu viền khi focus
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: kColorBlack, width: Sizes.dimen_0_5), // Màu viền khi focus
        ),
        hintText: widget.hintText.translator(context),
        hintStyle: PrimaryFont.light(Sizes.dimen_16)
            .copyWith(color: kColorTextPrimary),
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: SvgPicture.asset(
                  widget.suffixIcon!,
                  width: Sizes.dimen_26,
                  height: Sizes.dimen_26,
                ),
                onPressed: widget.onIconPressed)
            : const SizedBox.shrink(),
      ),
    );
  }
}

class AppPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputAction? action;

  const AppPasswordTextField(
      {super.key,
      required this.hintText,
      this.action = TextInputAction.done,
      required this.controller});

  @override
  State<AppPasswordTextField> createState() => _AppPasswordTextFieldState();
}

class _AppPasswordTextFieldState extends State<AppPasswordTextField> {
  late bool passwordVisible;

  @override
  void initState() {
    passwordVisible = true;
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: passwordVisible,
      style: PrimaryFont.regular(Sizes.dimen_16)
          .copyWith(color: kColorTextPrimary),
      textInputAction: widget.action,
      keyboardType: TextInputType.visiblePassword,
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: kColorWhite,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: kColorGrayPrimary,
              width: Sizes.dimen_1), // Màu viền khi focus
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: kColorBlack, width: Sizes.dimen_0_5), // Màu viền khi focus
        ),
        hintText: widget.hintText.translator(context),
        hintStyle: PrimaryFont.light(Sizes.dimen_16)
            .copyWith(color: kColorTextPrimary),
        suffixIcon: IconButton(
          icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: kColorGrayPrimary),
          onPressed: () {
            setState(
              () {
                passwordVisible = !passwordVisible;
              },
            );
          },
        ),
      ),
    );
  }
}

class SearchBarTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final Icon? prefix;
  final IconButton? suffixIcon;
  final bool readOnly;
  final Function() onDropdownPressed;

  const SearchBarTextField({
    super.key,
    required this.controller,
    required this.onDropdownPressed,
    required this.prefix,
    required this.suffixIcon,
    required this.readOnly,
    this.hintText,
  });

  @override
  State<SearchBarTextField> createState() => _SearchBarTextFieldState();
}

class _SearchBarTextFieldState extends State<SearchBarTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: PrimaryFont.regular(Sizes.dimen_16)
          .copyWith(color: kColorTextPrimary),
      maxLines: 1,
      readOnly: widget.readOnly,
      decoration: InputDecoration(
        filled: true,
        fillColor: kColorWhite,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kColorGrayPrimary,
            width: Sizes.dimen_1,
          ), // Màu viền khi focus
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kColorGrayPrimary,
            width: Sizes.dimen_1,
          ), // Màu viền khi focus
        ),
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffixIcon,
        contentPadding:
            const EdgeInsets.only(bottom: Sizes.dimen_4, left: Sizes.dimen_20),
        hintText: widget.hintText ?? "",
        hintStyle: PrimaryFont.regularWithItalic(Sizes.dimen_14)
            .copyWith(color: kColorTextSecondary),
      ),
    );
  }
}
