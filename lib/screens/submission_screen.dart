import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmissionScreen extends StatefulWidget {
  const SubmissionScreen({super.key});

  @override
  State<SubmissionScreen> createState() => _SubmissionScreenState();
}

class _SubmissionScreenState extends State<SubmissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Submit Thesis Paper',
            style: GoogleFonts.ubuntu(color: Colors.black)),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
            color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // thesis title
              Text(
                'Thesis Name',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "enter thesis name",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 10),

              // batch
              Text(
                'Select Batch',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "enter thesis name",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      )),
    );
  }
}

class STPTextWidget extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  const STPTextWidget({
    super.key,
    required this.name,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: name,
      ),
    );
  }
}
