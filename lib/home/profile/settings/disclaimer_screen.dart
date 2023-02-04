import 'package:bluecold/home/profile/widgets/app_bar.dart';
import 'package:bluecold/utils/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DisclaimerScreen extends StatefulWidget {
  const DisclaimerScreen({super.key});

  @override
  State<DisclaimerScreen> createState() => _DisclaimerScreenState();
}

class _DisclaimerScreenState extends State<DisclaimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
        child: Scaffold(
      body: Column(
        children: const [
          CustomAppBar(
            title: "Disclaimer",
          ),
        ],
      ),
    ));
  }

  Widget textSection() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const [Text("")],
      ),
    );
  }
}
