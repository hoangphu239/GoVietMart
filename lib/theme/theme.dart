import 'package:flutter/material.dart';

const kColorGrayPrimary = Color(0xFFD2DAEA);
const kColorGraySecondary = Color(0xFF8B929F);
const kColorGrayShadow = Color(0x62ADADAD);
const kColorGrayBorder = Color(0xFFF4F7FC);
const kColorGrayDivider = Color(0xFFF5F6F8);

const Color kColorWhite = Color(0xFFFFFFFF);
const Color kColorBlack = Color(0xFF000000);
const Color kColorPink = Color(0xFFFE2070);
const Color kColorRed = Color(0xFFFE2020);
const Color kColorYellow = Color(0xFFFFD100);
const Color kColorYellowLight = Color(0xFFFFFEF8);

const Color kColorTextButton = Color(0xFF333333);
const Color kColorTextPrimary = Color(0xFF2C2E32);
const Color kColorTextSecondary = Color(0xFF8B929F);
const Color kColorTextLink = Color(0xFF2085FE);
const Color kColorTextBottomBar = Color(0xFFA3A8B2);
const Color kColorBeginGradient = Color(0x80000000);
const Color kColorEndGradient = Color(0x00000000);
const Color kColorTransparent = Color(0x00000000);

class PrimaryFont {
  static const String fontFamily = "SanFrancisco";
  static TextStyle light(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: size,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle regular(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: size,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle medium(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: size,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle semiBold(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: size,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: size,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle regularWithItalic(double size) {
    return TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: size,
      decoration: TextDecoration.none,
    );
  }
}
