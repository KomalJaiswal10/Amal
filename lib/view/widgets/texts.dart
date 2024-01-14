import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/finals.dart';
import 'package:amal/service/theme/cubit/theme_cubit.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseTextTemplate {
  Widget defaultStyle({required String title, required TextStyle style}) {
    return DefaultTextStyle(style: style, child: Text(title));
  }
}

class CustomText extends BaseTextTemplate {
  final String title;
  CustomText({required this.title});

  Widget buttonText() {
    return defaultStyle(
        title: title,
        style: AppFinals.context.textTheme.titleMedium!
            .copyWith(fontWeight: FontWeight.bold, color: AppColors.white));
  }

  Widget smallText() {
    final bloc = AppFinals.context.watch<ThemeCubit>();
    return defaultStyle(
        title: title,
        style: AppFinals.context.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold, color: bloc.state.colorTheme.text));
  }
}
