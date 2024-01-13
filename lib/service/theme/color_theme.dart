import 'package:amal/service/constant/colors.dart';
import 'package:flutter/material.dart';

class ColorTheme {
  final Color textFieldBg;
  final Color buttonShadow;
  final Color text;

  ColorTheme(
      {required this.textFieldBg,
      required this.buttonShadow,
      required this.text});

  static ColorTheme lightThemeColor() {
    return ColorTheme(
        textFieldBg: AppColors.whiteBg,
        buttonShadow: AppColors.grey,
        text: AppColors.black);
  }

  static ColorTheme darkThemeColor() {
    return ColorTheme(
        textFieldBg: AppColors.primaryBlack,
        buttonShadow: AppColors.secondaryBlack,
        text: AppColors.white);
  }
}