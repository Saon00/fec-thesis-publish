import 'package:fecthesispublish/constants/app_colors.dart';
import 'package:fecthesispublish/constants/app_fonts.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool? obsecuretext;
  final TextInputType textInputType;
  const FormWidget({
    super.key,
    required this.text,
    required this.controller,
    this.obsecuretext,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: obsecuretext ?? false,
        controller: controller,
        cursorColor: grey,
        style: ubuntu.copyWith(
          color: primaryColor.withOpacity(.8),
        ),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: popins.copyWith(
            fontSize: 15,
            color: grey.withOpacity(.8),
          ),
        ),
      ),
    );
  }
}
