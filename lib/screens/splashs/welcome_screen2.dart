import 'package:fecthesispublish/screens/auths/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_widget.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SpalshWidget(
      bannerImgpath: 'assets/svgs/predictive_analytics.svg',
      sloganName: 'Share your progress knowledge with everyone',
      onTap: () {
        Get.offAll(
          () => const SignInScreen(),
        );
      },
    );
  }
}
