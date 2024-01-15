import 'package:amal/service/constant/finals.dart';
import 'package:amal/service/theme/cubit/theme_cubit.dart';
import 'package:amal/view/widgets/buttons.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:amal/view/widgets/textfields.dart';
import 'package:amal/view/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextField(
              hint: 'Your name',
              prefixIcon: Icons.account_box,
            ),
            15.heigth,
            const CustomTextField(
              hint: 'Mobile number or email',
              prefixIcon: Icons.email,
            ),
            15.heigth,
            const CustomTextField(hint: 'Password', prefixIcon: Icons.key),
            15.heigth,
            const CustomTextField(
                hint: 'Confirm password', prefixIcon: Icons.check_box_rounded),
            40.heigth,
            CustomButton(
              text: 'SIGN UP',
              isExpand: true,
              onTap: submit,
            ),
            20.heigth,
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  thickness: 3,
                ),
                CustomText(title: 'LOGIN').smallText(),
                const Divider(
                  thickness: 1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void submit() {
    final cubit = AppFinals.context.read<ThemeCubit>();
    cubit.toggleTheme();
  }
}
