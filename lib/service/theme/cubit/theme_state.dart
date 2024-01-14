import 'package:amal/service/theme/color_theme.dart';
import 'package:flutter/material.dart';

class ThemeState {
  final ColorTheme colorTheme;
  final ThemeMode themeMode;

  const ThemeState({required this.colorTheme, required this.themeMode});

  ThemeState copyWith({ColorTheme? colorTheme, ThemeMode? themeMode}) =>
      ThemeState(
          colorTheme: colorTheme ?? this.colorTheme,
          themeMode: themeMode ?? this.themeMode);
}
