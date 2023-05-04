import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
