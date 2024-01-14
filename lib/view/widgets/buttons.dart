import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/dimensions.dart';
import 'package:amal/service/theme/cubit/theme_cubit.dart';
import 'package:amal/view/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isExpand = false});
  final String text;
  final VoidCallback onTap;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ThemeCubit>().state;
    bool isPressed = false;
    return StatefulBuilder(builder: (context, internalState) {
      return GestureDetector(
          onTapUp: (value) {
            isPressed = false;
            internalState(() {});
          },
          onTapDown: (value) {
            isPressed = true;
            internalState(() {});
          },
          onTap: onTap,
          child: Container(
            width: isExpand ? Dimensions.width : Dimensions.width * .4,
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
            decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: isPressed
                    ? [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: const Offset(1, 5),
                            color: state.colorTheme.buttonShadow)
                      ]
                    : []),
            child: Center(
                child: CustomText(title: 'SIGN IN')
                    .buttonText()),
          ));
    });
  }
}
