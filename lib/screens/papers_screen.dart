import 'package:fecthesispublish/screens/submission_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/color.dart';

class PapersScreen extends StatefulWidget {
  const PapersScreen({super.key});

  @override
  State<PapersScreen> createState() => _PapersScreenState();
}

class _PapersScreenState extends State<PapersScreen> {
  final TextEditingController searchController = TextEditingController();
  late String searchText = "";

  List<String> batchDropDownItem = <String>[
    'All',
    'Batch-01',
    'Batch-02',
    'Batch-03',
    'Batch-04',
    'Batch-05',
    'Batch-06',
    'Batch-07',
    'Batch-08',
    'Batch-09',
    'Batch-10',
  ];
  // String batchDropDownValue = 'All';
  String batchDropDownValue = "All";

  List<String> deptDropDownItem = <String>[
    'All',
    'CSE',
    'EEE',
    'CE',
  ];
  String deptDropDownValue = 'All';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // department filter
                  SizedBox(
                    width: resWIDTH * 0.7,
                    child: TextFormField(
                      controller: searchController,
                      // onChanged: (value) => show = searchText.toString(),
                      decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.search),
                        // prefixIconColor: CustomColor.BLUEGREY,
                        hintText: 'search.....',
                        hintStyle: GoogleFonts.ubuntu(),
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
                        searchText = searchController.text;
                        searchController.clear();
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
              const SizedBox(height: 20),
              // Text(show),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // batch filter
                  SizedBox(
                    width: resWIDTH * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Department",
                          style: GoogleFonts.ubuntu(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        // department select
                        DropdownButtonFormField<String>(
                          hint: const Text('Select Department'),
                          dropdownColor: Colors.blueGrey.shade200,
                          isExpanded: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          items: deptDropDownItem.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: GoogleFonts.ubuntu()),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              deptDropDownValue = newValue!;
                            });
                          },
                          value: deptDropDownValue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: resWIDTH * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Batch",
                          style: GoogleFonts.ubuntu(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        // batch select
                        DropdownButtonFormField<String>(
                          hint: const Text('Select Batch'),
                          dropdownColor: Colors.blueGrey.shade200,
                          isExpanded: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          items: batchDropDownItem.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: GoogleFonts.ubuntu()),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              batchDropDownValue = newValue!;
                            });
                          },
                          value: batchDropDownValue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
