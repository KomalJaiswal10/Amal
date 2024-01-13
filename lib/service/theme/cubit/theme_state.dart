import 'package:amal/service/theme/color_theme.dart';
import 'package:amal/service/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

class ThemeState {
  final ColorTheme colorTheme;
  final ThemeData themeData;
  final ThemeEnum themeEnum;

  const ThemeState(
      {required this.colorTheme,
      required this.themeData,
      required this.themeEnum});

  ThemeState copyWith(
          {ColorTheme? colorTheme,
          ThemeData? themeData,
          ThemeEnum? themeEnum}) =>
      ThemeState(
          colorTheme: colorTheme ?? this.colorTheme,
          themeData: themeData ?? this.themeData,
          themeEnum: themeEnum ?? this.themeEnum);
}