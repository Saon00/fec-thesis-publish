import 'package:fecthesispublish/screens/splashs/welcome_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_widget.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SpalshWidget(
      bannerImgpath: 'assets/svgs/knowledge.svg',
      sloganName: 'Try to gather knowledge from vast world',
      onTap: () {
        Get.to(() => const WelcomeScreen2(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 1500));
      },
    );
  }
}
