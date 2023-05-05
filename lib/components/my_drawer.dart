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
        backgroundColor: CustomColor.BARBG,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // fec logo
              Column(
                children: [
                  Image.asset('assets/fec_logo.png'),

                  // contact
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.addressCard,
                      color: CustomColor.ICONCOLOR,
                    ),
                    title: Text(
                      'Contact',
                      style: GoogleFonts.ubuntu(color: CustomColor.ICONCOLOR),
                    ),
                  ),

                  // Settings
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.gear,
                        color: CustomColor.ICONCOLOR),
                    title: Text(
                      'Settings',
                      style: GoogleFonts.ubuntu(color: CustomColor.ICONCOLOR),
                    ),
                  ),

                  // Our website
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.earthAsia,
                        color: CustomColor.ICONCOLOR),
                    title: Text(
                      'Our Website',
                      style: GoogleFonts.ubuntu(color: CustomColor.ICONCOLOR),
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
                        color: CustomColor.ICONCOLOR),
                    title: Text(
                      'Log-Out',
                      style: GoogleFonts.ubuntu(color: CustomColor.ICONCOLOR),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
