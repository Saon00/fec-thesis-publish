import 'package:fecthesispublish/constants/app_fonts.dart';
import 'package:fecthesispublish/screens/auths/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/form_wid.dart';
import '../../constants/app_colors.dart';
import 'elevatedbutton.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final double resWidth = MediaQuery.of(context).size.width; // 360
    // final double resHeight = MediaQuery.of(context).size.height; // 677.33

    return Scaffold(
      body: SafeArea(
        child: Padding(
          // padding: const EdgeInsets.all(25),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                // text
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: black.withOpacity(.4),
                      ),
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          'Sign In',
                          style: GoogleFonts.roboto(fontSize: 35),
                        ),
                        const SizedBox(height: 20),

                        // user-name
                        FormWidget(
                          textInputType: TextInputType.text,
                          controller: TextEditingController(),
                          text: 'Email Address',
                        ),
                        const SizedBox(height: 10),
                        // password
                        FormWidget(
                          obsecuretext: true,
                          textInputType: TextInputType.text,
                          controller: TextEditingController(),
                          text: 'Password',
                        ),
                        const SizedBox(height: 20),

                        // sign-in button
                        ElevatedButtonWidget(
                          buttonName: 'SIGN IN',
                          ontap: () {
                            Get.to(() => const SignUpScreen());
                          },
                        ),

                        // create new account
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Create an account',
                            style: popins.copyWith(color: grey.withOpacity(.8)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
