import 'package:amal/service/constant/assets.dart';
import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/dimensions.dart';
import 'package:amal/service/constant/strings.dart';
import 'package:amal/service/route/transitions.dart';
import 'package:amal/view/src/authentication/sign_up.dart';
import 'package:amal/view/src/drawer/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isAnimated = false;
    bool isVisible = false;
    final double logoSize = Dimensions.width * .52;

    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Center(
            child: SizedBox(
              width: Dimensions.width * .5,
              // height: 350,
              child: Stack(
                children: <Widget>[
                  StatefulBuilder(builder: (context, innerStateOne) {
                    Future.delayed(const Duration(seconds: 1)).then(
                        (value) => innerStateOne(() => isAnimated = true));

                    return AnimatedPositioned(
                        width: isAnimated
                            ? Dimensions.width * .16
                            : Dimensions.width * .48,
                        top: isAnimated
                            ? Dimensions.height * .41
                            : Dimensions.height * .35,
                        right: isAnimated ? Dimensions.width * .014 : 0,
                        duration: const Duration(seconds: 2),
                        curve: Curves.fastOutSlowIn,
                        child: Image.asset(AppAssets.logo, width: logoSize));
                  })
                ],
              ),
            ),
          ),
          StatefulBuilder(builder: (context, innerStateTwo) {
            Future.delayed(const Duration(milliseconds: 1500))
                .then((value) => innerStateTwo(() => isVisible = true));

            return Visibility(
              visible: isVisible,
              child: AnimatedTextKit(
                onFinished: () =>
                    AppPageTransitions.fade(child: const SignUpView()),
                totalRepeatCount: 1,
                animatedTexts: [
                  FadeAnimatedText(AppString.appName,
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
