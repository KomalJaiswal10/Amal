import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/dimensions.dart';
import 'package:amal/view/src/authentication/login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isAnimated = false;

    bool isShow = false;

    final double bigFontSize = Dimensions.width * .5;
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                StatefulBuilder(builder: (context, innerStateOne) {
                  Future.delayed(const Duration(seconds: 2))
                      .then((value) => innerStateOne(() => isAnimated = true));
                  return AnimatedPositioned(
                      width: isAnimated ? 60.0 : 200.0,
                      top: isAnimated ? 110.0 : 50.0,
                      right: isAnimated ? 5 : 0,
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      child: Image.asset('assets/amal_lotus.png',
                          width: bigFontSize));
                })
              ],
            ),
          ),
          StatefulBuilder(builder: (context, innerStateTwo) {
            Future.delayed(const Duration(milliseconds: 2500))
                .then((value) => innerStateTwo(() => isShow = true));
            return Visibility(
              visible: isShow,
              child: AnimatedTextKit(
                onFinished: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginView())),
                totalRepeatCount: 1,
                animatedTexts: [
                  FadeAnimatedText('Amal',
                      // fadeOutBegin: 0.9,
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(
                          fontFamily: 'Mrs Saint Delafield',
                          fontSize: 120,
                          color: AppColors.primaryBlue)),
                ],
              ),
            );
          })
        ]),
      ),
    );
  }
}
