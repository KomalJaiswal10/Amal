import 'package:amal/service/network/hive.dart';
import 'package:amal/service/theme/color_theme.dart';
import 'package:amal/service/theme/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ThemeState(
            colorTheme: ColorTheme.lightThemeColor(),
            themeMode: ThemeMode.system));

  Future<void> toggleTheme() async {
    if (state.themeMode == ThemeMode.dark) {
      emit(state.copyWith(
          colorTheme: ColorTheme.lightThemeColor(),
          themeMode: ThemeMode.light));
      await BaseHive.addData<bool>(
          boxName: 'themeBox', key: 'isDark', data: false);
    } else {
      emit(state.copyWith(
          colorTheme: ColorTheme.darkThemeColor(), themeMode: ThemeMode.dark));
      await BaseHive.addData<bool>(
          boxName: 'themeBox', key: 'isDark', data: true);
    }
  }

  Future<void> loadTheme() async {
    final bool? isDark =
        await BaseHive.getData<bool>(boxName: 'themeBox', key: 'isDark');

    if (isDark != null) {
      emit(state.copyWith(
          colorTheme: isDark
              ? ColorTheme.darkThemeColor()
              : ColorTheme.lightThemeColor(),
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light));
    }
  }
}
