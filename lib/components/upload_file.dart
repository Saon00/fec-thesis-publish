import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadFileWidget extends StatelessWidget {
  final String title;
  const UploadFileWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber,
      ),
      child: MaterialButton(
        onPressed: () {
          pickFile();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.file_upload_outlined),
            Text(title, style: GoogleFonts.ubuntu())
          ],
        ),
      ),
    );
  }

  void pickFile() async {
    FilePickerResult? pickerResult =
        await FilePicker.platform.pickFiles(type: FileType.media);
    if (pickerResult == null) {
      Get.snackbar(title, "Upload Unsuccessful",
          backgroundColor: Colors.redAccent,
          icon: const Padding(
            padding: EdgeInsets.all(15.0),
            child: FaIcon(
              FontAwesomeIcons.xmark,
              color: Colors.black,
            ),
          ));
    } else {
      Get.snackbar(title, "Upload Successful",
          backgroundColor: Colors.greenAccent,
          icon: const Padding(
            padding: EdgeInsets.all(15.0),
            child: FaIcon(
              FontAwesomeIcons.check,
              color: Colors.black,
            ),
          ));
    }
  }
}
