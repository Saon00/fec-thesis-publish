import 'package:fecthesispublish/constants/app_fonts.dart';
import 'package:fecthesispublish/screens/auths/sign_in_screen.dart';
import 'package:fecthesispublish/screens/splashs/welcome_screen1.dart';
import 'package:fecthesispublish/screens/splashs/welcome_screen2.dart';
import 'package:fecthesispublish/screens/splashs/welcome_screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 7))
  //       .then((value) => Get.off(()=>const WelcomeScreen1()));
  // }

  final PageController _controller = PageController();
  bool onLastPage = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _redirect();
  // }

  // Future<void> _redirect() async {
  //   await Future.delayed(Duration.zero);
  //   final sessoon = supabase.auth.currentSession;
  //   if (!mounted) return;
  //   if (sessoon != null) {
  //     Get.off(() => const MainNavBarScreen());
  //   } else {
  //     Get.off(() => const SignInScreen());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  onLastPage = (value == 2);
                });
              },
              children: const [
                WelcomeScreen1(),
                WelcomeScreen2(),
                WelcomeScreen3()
              ],
            ),
            Container(
                alignment: const Alignment(0, .65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // skip button
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text("Skip", style: popins),
                    ),

                    // dot indicator
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                    ),

                    // onLastPage

                    // next ? done button
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                Get.offAll(const SignInScreen());
                              });
                            },
                            child: Text("Done", style: popins),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 1500),
                                  curve: Curves.decelerate);
                            },
                            child: Text("Next", style: popins),
                          ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
