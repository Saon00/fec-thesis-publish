import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool? obsecuretext;
  const FormWidget({
    super.key,
    required this.text,
    required this.controller,
    this.obsecuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        obscureText: obsecuretext ?? false,
        controller: controller,
        decoration: InputDecoration(
            hintText: text, hintStyle: GoogleFonts.roboto(color: Colors.grey)),
      ),
    );
  }
}
