import 'package:fecthesispublish/constants/app_fonts.dart';
import 'package:fecthesispublish/screens/auths/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../components/form_wid.dart';
import '../../constants/app_colors.dart';
import '../main_navbar_screen.dart';
import 'elevatedbutton.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  // late final StreamSubscription<AuthState> _authSubscription;

  // @override
  // void initState() {
  //   super.initState();
  //   _authSubscription = supabase.auth.onAuthStateChange.listen((event) {
  //     final session = event.session;
  //     if (session != null) {
  //       Get.off(() => const MainNavBarScreen());
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    // _authSubscription.cancel();
    super.dispose();
  }

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
            child: Form(
              key: _formKey,
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
                            controller: _emailController,
                            text: 'Email Address',
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
                          // password
                          FormWidget(
                            obsecuretext: true,
                            textInputType: TextInputType.text,
                            controller: _passwordController,
                            text: 'Password',
                            fieldValidator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Required Password';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),

                          // sign-in button
                          ElevatedButtonWidget(
                            buttonName: 'SIGN IN',
                            ontap: () async {
                              try {
                                // final email = _emailController.text.trim();
                                // final password = _passwordController.text;

                                // await supabase.auth.signInWithOtp(
                                //   email: email,
                                //   // password: password
                                //   emailRedirectTo:
                                //       SupabaseCredentials.emailRedirect,
                                // );

                                // await AuthServices.signInWithEmail(
                                //   email: _emailController.text,
                                //   password: _passwordController.text,
                                // );

                                Get.offAll(() => const MainNavBarScreen());
                                if (mounted) {
                                  Get.showSnackbar(const GetSnackBar(
                                    duration: Duration(seconds: 3),
                                    // message: 'Login Successfull',
                                    message: 'Check Your mail',
                                  ));
                                }
                              } on AuthException catch (e) {
                                Get.showSnackbar(GetSnackBar(
                                  duration: const Duration(seconds: 2),
                                  message: e.message,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.error,
                                ));
                              } catch (e) {
                                Get.showSnackbar(GetSnackBar(
                                  duration: const Duration(seconds: 2),
                                  message: 'Unknown Error occurred',
                                  backgroundColor:
                                      Theme.of(context).colorScheme.error,
                                ));
                              }
                            },
                          ),

                          // create new account
                          TextButton(
                            onPressed: () {
                              Get.to(() => const SignUpScreen());
                            },
                            child: Text(
                              'Create an account',
                              style:
                                  popins.copyWith(color: grey.withOpacity(.8)),
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
      ),
    );
  }
}
