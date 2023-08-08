import 'package:fecthesispublish/screens/auths/elevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/form_wid.dart';
import '../../constants/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: black.withOpacity(.4),
                      ),
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        // sign up
                        Text(
                          'Sign Up',
                          style: GoogleFonts.roboto(fontSize: 35),
                        ),
                        const SizedBox(height: 20),

                        // first name
                        FormWidget(
                          textInputType: TextInputType.text,
                          text: 'First Name',
                          controller: TextEditingController(),
                        ),
                        const SizedBox(height: 10),

                        // last name
                        FormWidget(
                          textInputType: TextInputType.text,
                          text: 'Last Name',
                          controller: TextEditingController(),
                        ),
                        const SizedBox(height: 10),

                        // email address
                        FormWidget(
                          textInputType: TextInputType.emailAddress,
                          text: 'Email Address',
                          controller: TextEditingController(),
                        ),
                        const SizedBox(height: 10),

                        // registration no
                        FormWidget(
                          textInputType: TextInputType.number,
                          text: 'Registration No.',
                          controller: TextEditingController(),
                        ),
                        const SizedBox(height: 10),

                        // password
                        FormWidget(
                          textInputType: TextInputType.text,
                          text: 'Password',
                          obsecuretext: true,
                          controller: TextEditingController(),
                        ),
                        const SizedBox(height: 10),
                        // confirm password
                        FormWidget(
                          textInputType: TextInputType.text,
                          text: 'Confirm Password',
                          obsecuretext: true,
                          controller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),

                        // sign-up button
                        ElevatedButtonWidget(
                            buttonName: 'SIGN UP', ontap: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
