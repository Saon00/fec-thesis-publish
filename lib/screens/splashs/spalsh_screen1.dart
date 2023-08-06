import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/knowledge.svg',
                  height: 250,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Try to gather knowledge from vast world',
                    style: GoogleFonts.poppins(fontSize: 30))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
