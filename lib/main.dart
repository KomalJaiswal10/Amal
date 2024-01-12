import 'package:amal/service/constant/appfinals.dart';
import 'package:amal/service/constant/colors.dart';
import 'package:amal/view/src/intro/splash.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppFinals.globalStateKey,
      title: 'Amal',
      themeMode: ThemeMode.dark,
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          DateTime.now().dateWithMonth(),
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColors.primaryBlue),
        ),
      ),
    );
  }
}
