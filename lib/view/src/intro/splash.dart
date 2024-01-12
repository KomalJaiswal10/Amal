import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/dimensions.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isAnimated = false;
  bool isShow = false;
  final double _bigFontSize = Dimensions.width * .5;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => setState(() => isAnimated = true))
        .then((value) => Future.delayed(const Duration(milliseconds: 800))
                .then((value) => setState(() => isShow = true))
            // .then((value) => Get.offAll(() => const LoginPage()))
            );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                    width: isAnimated ? 60.0 : 200.0,
                    top: isAnimated ? 110.0 : 50.0,
                    right: isAnimated ? 5 : 0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: Image.asset('assets/amal_lotus.png',
                        width: _bigFontSize)),
              ],
            ),
          ),
          Visibility(
            visible: isShow,
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                FadeAnimatedText('Amal',
                    fadeOutBegin: 0.9,
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                        fontFamily: GoogleFonts.mrsSaintDelafield().fontFamily,
                        fontSize: 120,
                        color: AppColors.primaryBlue)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
