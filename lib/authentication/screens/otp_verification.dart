import 'dart:developer';

import 'package:bluecold/home/profile/widgets/app_bar.dart';
import 'package:bluecold/home/screen/home_navigation.dart';
import 'package:bluecold/home/screen/home_screen.dart';
import 'package:bluecold/utils/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String otp;
  const OtpVerificationScreen({
    super.key,
    required this.otp,
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  TextEditingController otp6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(title: ""),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Verification",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Enter 6 digits verification code sent to your number",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            Form(
              child: Row(
                children: [
                  otpField(otpNumberController: otp1, isFirst: true),
                  otpField(
                    otpNumberController: otp2,
                  ),
                  otpField(
                    otpNumberController: otp3,
                  ),
                  otpField(
                    otpNumberController: otp4,
                  ),
                  otpField(
                    otpNumberController: otp5,
                  ),
                  otpField(otpNumberController: otp6, isLast: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget otpField(
      {required TextEditingController otpNumberController,
      bool isFirst = false,
      bool isLast = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.12,
          width: MediaQuery.of(context).size.width * 0.12,
          child: Center(
            child: TextFormField(
              style: Theme.of(context).textTheme.headline6,
              controller: otpNumberController,
              autofocus: isFirst,
              keyboardType: TextInputType.number,
              showCursor: false,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                  if (isLast) {
                    _validate();
                  }
                }
              },
              decoration: const InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.blue))),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validate() {
    String otp =
        otp1.text + otp2.text + otp3.text + otp4.text + otp5.text + otp6.text;
    if (widget.otp == otp) {
      Navigator.of(context)
          .push(CupertinoPageRoute(builder: (context) => HomeNavigation()));
    }
  }
}
