import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // logo
            Image.asset(
              'assets/fec_logo.png',
              width: 250,
            ),

            // text
            Text(
              'Sign In',
              style: GoogleFonts.roboto(fontSize: 50),
            ),
            const SizedBox(height: 20),

            // user-name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.roboto(color: Colors.grey)),
              ),
            )

            // password

            // sign-in button

            // create new account
          ],
        ),
      ),
    );
  }
}
