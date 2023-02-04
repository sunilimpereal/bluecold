import 'package:flutter/material.dart';
import '../../../utils/screen.dart';
import '../widgets/app_bar.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
}
