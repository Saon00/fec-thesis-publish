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
  final TextEditingController searchText = TextEditingController();
  late String show = "";

  @override
  Widget build(BuildContext context) {
    double resWIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      // floatingActionButton
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColor.BLUEGREY,
        onPressed: () {
          Get.to(const SubmissionScreen());
        },
        child: const Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: resWIDTH * 0.7,
                    child: TextFormField(
                      controller: searchText,
                      // onChanged: (value) => show = searchText.toString(),
                      decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.search),
                        // prefixIconColor: CustomColor.BLUEGREY,
                        hintText: 'search.....',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        show = searchText.text;
                        searchText.clear();
                      });
                    },
                    child: SizedBox(
                      height: 60,
                      child: Icon(
                        Icons.search,
                        color: CustomColor.BLUEGREY,
                      ),
                    ),
                  ),
                ],
              ),
              // Text(show),
            ],
          ),
        ),
      ),
    );
  }
}
