import 'package:flutter/material.dart';

class AppFinals {
  AppFinals._();

  static GlobalKey<NavigatorState> globalStateKey = GlobalKey<NavigatorState>();
  static BuildContext context = globalStateKey.currentContext!;
}
