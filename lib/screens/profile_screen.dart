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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile
            Text(
              "Profile",
              style: GoogleFonts.ubuntu(fontSize: 40),
            ),
            const Divider(
              thickness: 3,
              endIndent: 200,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),

            // name
            Row(
              children: [
                Text(
                  "Name: ",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Anamul Nishat",
                  style: GoogleFonts.ubuntu(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // email
            Row(
              children: [
                Text(
                  "e-mail: ",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "anamulnishat@gmail.com",
                  style: GoogleFonts.ubuntu(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 15),
            // registration
            Row(
              children: [
                Text(
                  "Reg. No.: ",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "1777",
                  style: GoogleFonts.ubuntu(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
