import 'package:amal/service/constant/finals.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppPageTransitions {
  AppPageTransitions._();

  static Future<Object?> fade({required Widget child}) {
    return Navigator.push(AppFinals.context,
        PageTransition(type: PageTransitionType.fade, child: child));
  }
}
