import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_fonts.dart';

class SpalshWidget extends StatelessWidget {
  final String sloganName;
  final String bannerImgpath;
  final VoidCallback onTap;
  const SpalshWidget({
    super.key,
    required this.sloganName,
    required this.bannerImgpath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double resHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Stack(children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  bannerImgpath,
                  height: resHeight / 3.5,
                ),
                SizedBox(
                  height: resHeight / 35,
                ),
                Text(
                  sloganName,
                  style: popins.copyWith(fontSize: resHeight / 25),
                ),
                SizedBox(
                  height: resHeight / 35,
                ),
                // SizedBox(
                //   width: 250,
                //   height: 50,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: purple.withOpacity(.8),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(
                //           10,
                //         ),
                //       ),
                //     ),
                //     onPressed: onTap,
                //     child: Text("Continue",
                //         style: popins.copyWith(
                //             fontSize: 20,
                //             color: black,
                //             fontWeight: FontWeight.w500)),
                //   ),
                // )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
