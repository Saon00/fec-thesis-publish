import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // profile
              Text(
                "Blogs",
                style: GoogleFonts.ubuntu(fontSize: 40),
              ),
              const Divider(
                thickness: 3,
                endIndent: 200,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
