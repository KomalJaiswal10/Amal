import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExThemeData on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}

extension ExtSizedBox on num {
  SizedBox get width => SizedBox(width: toDouble());
  SizedBox get heigth => SizedBox(height: toDouble());
}

extension ExtDateTime on DateTime {
  String getDate({bool isReverse = false}) =>
      DateFormat(isReverse ? "yyyy-MM-dd" : "dd-MM-yyyy").format(this);

  String getTime() => DateFormat(DateFormat.HOUR24_MINUTE_SECOND).format(this);

  String dateWithMonthYear() =>
      DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(this);

  String dateWithMonth() => DateFormat.MMMMEEEEd().format(this);
}
