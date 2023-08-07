import 'package:fecthesispublish/screens/splashs/welcome_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_widget.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SpalshWidget(
      bannerImgpath: 'assets/svgs/articles.svg',
      sloganName: 'Read more to know topics deeply and accurately',
      onTap: () {
        Get.to(() => const WelcomeScreen2(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 1500));
      },
    );
  }
}
