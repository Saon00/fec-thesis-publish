import 'package:fecthesispublish/screens/submission_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/color.dart';

class PapersScreen extends StatefulWidget {
  const PapersScreen({super.key});

  @override
  State<PapersScreen> createState() => _PapersScreenState();
}

class _PapersScreenState extends State<PapersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColor.BLUEGREY,
        onPressed: () {
          Get.to(const SubmissionScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
