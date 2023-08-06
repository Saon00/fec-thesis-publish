import 'package:fecthesispublish/components/color.dart';
import 'package:fecthesispublish/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double resWIDTH = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Drawer(
        width: resWIDTH * 0.6,
        backgroundColor: CustomColor.BLUEGREY,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // fec logo
              Column(
                children: [
                  Image.asset('assets/images/fec_logo.png'),

                  // contact
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.addressCard,
                      color: CustomColor.WHITE,
                    ),
                    title: Text(
                      'Contact',
                      style: GoogleFonts.ubuntu(color: CustomColor.WHITE),
                    ),
                  ),

                  // Settings
                  ListTile(
                    leading:
                        FaIcon(FontAwesomeIcons.gear, color: CustomColor.WHITE),
                    title: Text(
                      'Settings',
                      style: GoogleFonts.ubuntu(color: CustomColor.WHITE),
                    ),
                  ),

                  // Our website
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.earthAsia,
                        color: CustomColor.WHITE),
                    title: Text(
                      'Our Website',
                      style: GoogleFonts.ubuntu(color: CustomColor.WHITE),
                    ),
                  ),
                ],
              ),

              GestureDetector(
                onTap: () {
                  Get.to(const SignUpScreen());
                },
                child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.rightFromBracket,
                        color: CustomColor.WHITE),
                    title: Text(
                      'Log-Out',
                      style: GoogleFonts.ubuntu(color: CustomColor.WHITE),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
