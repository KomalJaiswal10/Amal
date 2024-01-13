
import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/finals.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:flutter/material.dart';

abstract class BaseTextTemplate {
  Widget defaultStyle({required String title, required TextStyle style}) {
    return DefaultTextStyle(style: style, child: Text(title));
  }
}

class CustomText extends BaseTextTemplate {
  final String title;

  CustomText(this.title);

  Widget buttonText() {
    return defaultStyle(
        title: title,
        style: AppFinals.context
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold, color: AppColors.white));
  }
}