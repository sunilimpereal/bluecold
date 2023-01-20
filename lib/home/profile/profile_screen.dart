import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.notifications,
                color: Colors.black38,
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget name() {
    return Container();
  }

  Widget navbar() {
    //TODO:
    // create a settings button
    // create a settings MENU
    return Container();
  }

  Widget profile() {
    return Container();
  }
}
