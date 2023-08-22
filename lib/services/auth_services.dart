import 'package:fecthesispublish/constants/supabase_urls.dart';

class AuthServices {
// Signup
  static Future<void> signUP(
      {required String email,
      required String password,
      required String firstname,
      required String lastname,
      required int regno}) async {
    await supabase.auth.signUp(
        email: email,
        password: password,
        emailRedirectTo: emailRedirect,
        data: {'firstName': firstname, 'lastName': lastname, 'regNo': regno});
  }

  // SignIn
  static Future<void> signIN(
      {required String email, required String password}) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
  }

  // SignOut
  // otp
}

/*
  // signIn method
  static Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print('error $e');
    }
  }

// signUp method
  static Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );
    } catch (e) {
      print('error $e');
    }

    // final Session? session = res.session;
    // final User? user = res.user;
  }

// signOut method
  static Future<void> signOut() async {
    try {
      final response = await Supabase.instance.client.auth.signOut();
    } catch (e) {
      print("Error signing out");
    }
  }
*/

