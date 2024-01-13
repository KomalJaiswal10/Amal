import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.controller, this.hint, this.onChanged, this.prefixIcon});
  final TextEditingController? controller;
  final String? hint;
  final Function(String)? onChanged;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ThemeCubit>().state;
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hint,
          fillColor: state.colorTheme.textFieldBg,
          filled: true,
          border: InputBorder.none,
          // focusedBorder: OutlineInputBorder(
          //     borderSide:
          //         BorderSide(color: Colors.white.withOpacity(.2), width: 1)),
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: AppColors.primaryBlue),
    );
  }
}
