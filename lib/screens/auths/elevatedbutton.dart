import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String buttonName;
  final VoidCallback ontap;
  const ElevatedButtonWidget({
    super.key,
    required this.buttonName,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
          ),
          onPressed: ontap,
          child: Text(buttonName, style: popins)),
    );
  }
}
