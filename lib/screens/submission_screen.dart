import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmissionScreen extends StatefulWidget {
  const SubmissionScreen({super.key});

  @override
  State<SubmissionScreen> createState() => _SubmissionScreenState();
}

class _SubmissionScreenState extends State<SubmissionScreen> {
  List<String> batchDropDownItem = <String>[
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
  String batchDropDownValue = 'Batch-01';

  List<String> deptDropDownItem = <String>[
    'CSE',
    'EEE',
    'CE',
  ];
  String deptDropDownValue = 'CSE';

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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              const SizedBox(height: 10),

              // department
              Text(
                'Select Department',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold, fontSize: 20),
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
              const SizedBox(height: 10),

              // team mates name
              Text(
                'Team Mates Name',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "first name",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "second name",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "third name",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "fourth name",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 10),

              // supervisor name
              Text(
                'Supervisor Name',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              STPTextWidget(
                name: "enter supervisor's name",
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
          hintStyle: GoogleFonts.ubuntu()),
    );
  }
}
