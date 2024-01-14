import 'package:flutter/material.dart';

class MyInheritedContext extends InheritedWidget {
  final BuildContext context;

  const MyInheritedContext({
    super.key,
    required this.context,
    required Widget child,
  }) : super(child: child);

  static MyInheritedContext? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedContext>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
