import 'package:amal/service/theme/color_theme.dart';
import 'package:amal/service/theme/cubit/theme_state.dart';
import 'package:amal/service/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeEnum { dark, light }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ThemeState(
            colorTheme: ColorTheme.lightThemeColor(),
            themeData: AppTheme.ligthTheme,
            themeEnum: ThemeEnum.light));

  void toggleTheme() {
    if (state.themeEnum == ThemeEnum.dark) {
      emit(state.copyWith(
          colorTheme: ColorTheme.lightThemeColor(),
          themeData: AppTheme.ligthTheme,
          themeEnum: ThemeEnum.light));
    } else {
      emit(state.copyWith(
          colorTheme: ColorTheme.darkThemeColor(),
          themeData: AppTheme.darkTheme,
          themeEnum: ThemeEnum.dark));
    }
  }
}