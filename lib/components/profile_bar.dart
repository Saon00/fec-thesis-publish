import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileBar extends StatefulWidget {
  const MyProfileBar({super.key});

  @override
  State<MyProfileBar> createState() => _MyProfileBarState();
}

class _MyProfileBarState extends State<MyProfileBar> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.asset('assets/fec_logo.png'),
      tileColor: Colors.black54,
      title: Text('Welcome', style: GoogleFonts.ubuntu()),
      subtitle: Text('Anamul Haq', style: GoogleFonts.ubuntu()),
    );
  }
}
