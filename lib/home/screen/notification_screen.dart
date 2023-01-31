import 'package:bluecold/home/profile/widgets/app_bar.dart';
import 'package:bluecold/utils/screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Scaffold(
        body: Column(
          children: const [
            CustomAppBar(title: "Notifications"),
          ],
        ),
      ),
    );
  }
}
