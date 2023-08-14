import 'dart:async';

import 'package:fecthesispublish/screens/auths/elevatedbutton.dart';
import 'package:fecthesispublish/screens/auths/sign_in_screen.dart';
import 'package:fecthesispublish/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../components/form_wid.dart';
import '../../constants/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _firstName = TextEditingController();
  late TextEditingController _lastName = TextEditingController();
  late TextEditingController _emailAddress = TextEditingController();
  late TextEditingController _registrationNumber = TextEditingController();
  late TextEditingController _password = TextEditingController();
  late final StreamSubscription<AuthState> _authSubscription;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   super.initState();
  //   _authSubscription = supabase.auth.onAuthStateChange.listen((event) {
  //     final session = event.session;
  //     if (session != null) {
  //       Get.off(() => const SignInScreen());
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _emailAddress = TextEditingController();
    _registrationNumber = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _emailAddress.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _registrationNumber.dispose();
    _password.dispose();
    _authSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Form(
              key: _formKey,
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
                            controller: _firstName,
                            fieldValidator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required First Name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),

                          // last name
                          FormWidget(
                            textInputType: TextInputType.text,
                            text: 'Last Name',
                            controller: _lastName,
                            fieldValidator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required Last Name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),

                          // email address
                          FormWidget(
                            textInputType: TextInputType.emailAddress,
                            text: 'Email Address',
                            controller: _emailAddress,
                            fieldValidator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required Email';
                              }
                              final bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                              if (!emailValid) {
                                return 'Email is not valid';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),

                          // registration no
                          FormWidget(
                            textInputType: TextInputType.number,
                            text: 'Registration No.',
                            controller: _registrationNumber,
                            fieldValidator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required Reg No.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),

                          // password
                          FormWidget(
                            textInputType: TextInputType.text,
                            text: 'Password',
                            obsecuretext: true,
                            controller: _password,
                            fieldValidator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required Password';
                              }
                              return null;
                            },
                          ),
                          // const SizedBox(height: 10),
                          // // confirm password
                          // FormWidget(
                          //   textInputType: TextInputType.text,
                          //   text: 'Confirm Password',
                          //   obsecuretext: true,
                          //   controller: _confirmPassword,
                          // ),
                          const SizedBox(height: 20),

                          // sign-up button
                          ElevatedButtonWidget(
                            buttonName: 'SIGN UP',
                            ontap: () async {
                              if (_formKey.currentState!.validate()) {
                                //
                                try {
                                  await AuthServices.signUP(
                                    email: _emailAddress.text,
                                    password: _password.text,
                                    firstname: _firstName.text,
                                    lastname: _lastName.text,
                                    regno: int.parse(_registrationNumber.text),
                                  );
                                  if (mounted) {
                                    Get.showSnackbar(GetSnackBar(
                                      duration: const Duration(seconds: 7),
                                      message:
                                          'SignUp Successful\nBefore login, Confirm your email',
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                    ));
                                    Get.off(() => const SignInScreen());
                                  }
                                } on AuthException catch (e) {
                                  Get.showSnackbar(GetSnackBar(
                                    duration: const Duration(seconds: 2),
                                    message: e.message,
                                    backgroundColor:
                                        Theme.of(context).colorScheme.error,
                                  ));
                                } catch (e) {
                                  print('problem type $e');
                                }
                                //
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
