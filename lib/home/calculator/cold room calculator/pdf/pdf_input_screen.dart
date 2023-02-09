import 'package:bluecold/authentication/screens/widgets/input_field.dart';
import 'package:bluecold/home/profile/widgets/app_bar.dart';
import 'package:bluecold/main.dart';
import 'package:flutter/material.dart';

import '../../../../utils/screen.dart';
import 'cold_room_pdf.dart';

class PdfInputScreen extends StatefulWidget {
  final Function onSubmitted;
  const PdfInputScreen({super.key, required this.onSubmitted});

  @override
  State<PdfInputScreen> createState() => _PdfInputScreenState();
}

class _PdfInputScreenState extends State<PdfInputScreen> {
  TextEditingController customerController = TextEditingController();
  TextEditingController jobReferenceController = TextEditingController();
  TextEditingController roomNameController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(title: "Details"),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                AppInputField(label: "Customer", textEditingController: customerController, onSubmitted: (value) {}),
                AppInputField(label: "Job Reference", textEditingController: jobReferenceController, onSubmitted: (value) {}),
                AppInputField(label: "Room name", textEditingController: roomNameController, onSubmitted: (value) {}),
                AppInputField(label: "Email Id", textEditingController: emailIdController, onSubmitted: (value) {}),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        sharedPref.setPdfInputs(
                            customer: customerController.text,
                            jobReference: jobReferenceController.text,
                            roomName: roomNameController.text,
                            emailId: emailIdController.text);
                        Future.delayed(const Duration(milliseconds: 500));
                        widget.onSubmitted();
                        // ColdRoomPdf().generatePdf();
                      },
                      child: const Text("Generate PDF"),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
