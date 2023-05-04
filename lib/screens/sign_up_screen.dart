import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/form_wid.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        text: 'First Name',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 10),

                      // last name
                      FormWidget(
                        text: 'Last Name',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 10),

                      // email address
                      FormWidget(
                        text: 'Email Address',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 10),

                      // registration no
                      FormWidget(
                        text: 'Registration No.',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 10),

                      // password
                      FormWidget(
                        text: 'Password',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 10),
                      // confirm password
                      FormWidget(
                        text: 'Confirm Password',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 20),

                      // sign-up button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                            ),
                            onPressed: () {},
                            child: Text('SIGN Up',
                                style: GoogleFonts.poiretOne())),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
