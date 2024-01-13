import 'package:amal/service/constant/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  
  static ThemeData ligthTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'Lato',
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'Lato',
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
  );
}
